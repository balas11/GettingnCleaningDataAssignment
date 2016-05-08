run_analysis <- function() {
    library(httr)
    library(dplyr)
    #download file by creating dir if not exists
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    down_file_path <- "./data/samsung.zip"
    if(!file.exists("./data")) { dir.create("./data")}
    if(!file.exists(down_file_path)) {
        print("downloading...")
        download.file(url,down_file_path, method="curl")
    }
    #unzip the file if unzipped dir 'UCI HAR Dataset' does not exists
    uz_data_dir <- file.path("./data", "UCI HAR Dataset")
    if(!file.exists(uz_data_dir)) {
        print("unzipping...")
        unzip(down_file_path, exdir = "./data")
    }
    print("dowloaded and unzipped the data files")
    
    #######
    ## Step 1
    ## Merging the data
    ## Read files and merge the data
    #######
    print("Merging Started...")
    #Read y_train & y_test are the activity codes(factors, column)
    act_code_train_data <- read.table(file.path(uz_data_dir, "train", "y_train.txt"), header=FALSE) 
    act_code_test_data <- read.table(file.path(uz_data_dir, "test", "y_test.txt"), header=FALSE)
    activity_code_data <- rbind( act_code_train_data, act_code_test_data)
    names(activity_code_data) <- c("Activity")
    
    #print("-----------Activity-----------")
    #str(activity_code_data)
    
    #Read subject_train & subject_text are the subject codes (column)
    subject_code_train_data <- read.table(file.path(uz_data_dir, "train", "subject_train.txt"), header=FALSE)
    subject_code_test_data <- read.table(file.path(uz_data_dir, "test", "subject_test.txt"), header=FALSE)
    subject_code_data <- rbind(subject_code_train_data, subject_code_test_data)
    names(subject_code_data) <- c("Subject")
    
    #print("---------Subject--------------")
    #str(subject_code_data)
    
    #Read features test data for Train and Test subjects
    feat_train_data <- read.table(file.path(uz_data_dir, "train", "X_train.txt"), header=FALSE)
    feat_test_data <- read.table(file.path(uz_data_dir, "test", "X_test.txt"), header=FALSE)
    features_data <- rbind(feat_train_data, feat_test_data)
    #Read feature col names
    feat_name_data <- read.table(file.path(uz_data_dir, "features.txt"), header=FALSE)
    names(features_data) <- feat_name_data$V2
    
    #print("---------Features--------------")
    #str(features_data)
    
    #Merge into full data
    samsung_full_data <- cbind(features_data,cbind(subject_code_data, activity_code_data))
    
    #print("-----------Samsung full data--------------")
    #str(samsung_full_data)
    
    print("Merging completed...")
    
    #######
    ## Step 2
    ## Extract only the mean and std of each measurement
    ## select col names from feature list and use a subset
    #######
    req_feat_name <- feat_name_data$V2[grep("mean\\(\\)|std\\(\\)", feat_name_data$V2)]
    req_variables <- c(as.character(req_feat_name), "Subject", "Activity")
    samsung_req_data <- subset(samsung_full_data, select=req_variables)
    print("Extracted required variables (mean & std)...")
    #str(samsung_req_data)
    
    #######
    ## Step 3
    ## Assign Descriptive activity names
    ## read from activity labels.txt and set as factors
    #######
    activities <- read.table(file.path(uz_data_dir, "activity_labels.txt"), header=FALSE)
    samsung_req_data$Activity <- factor(samsung_req_data$Activity, levels=activities$V1, labels=activities$V2)
    print("Activity labes set...")
    arrange(samsung_req_data, Subject, Activity)
    #str(samsung_req_data)

    #######
    ## Step 4
    ## Assign Descriptive variable name
    ## expand t -> time, f -> frequency, Acc -> Accelerometer, Gyro -> Gyroscope, Mag -> Magnitude
    ## t and f appears at the start of variable names
    #######
    names(samsung_req_data) <- gsub("^t", "time", names(samsung_req_data))
    names(samsung_req_data) <- gsub("^f", "frequency", names(samsung_req_data))
    names(samsung_req_data) <- gsub("Acc", "Accelerometer", names(samsung_req_data))
    names(samsung_req_data) <- gsub("Gyro", "Gyroscope", names(samsung_req_data))
    names(samsung_req_data) <- gsub("Mag", "Magnitude", names(samsung_req_data))
    print("Variable names made descriptive...")

    ##### save the data here before getting tidy set
    save_output_file <- function(name, dataset) {
        if(!file.exists("./output")) { dir.create("./output")}
        ofpname <- file.path("./output", paste(name, ".csv", sep=""))
        write.csv(dataset, ofpname)
    }
    save_output_file("samsung_req", samsung_req_data)
    
    #######
    ## Step 5
    ## Create a tidy set
    ## Get average of each variable for every subject and activity
    #######
    
    samsung_tidy_data <- group_by(samsung_req_data, Subject, Activity) %>% summarise_each(funs(mean))
    colnames(samsung_tidy_data)[-c(1:2)] <- paste("mean_of_", colnames(samsung_tidy_data)[-c(1:2)], sep = "")
    print("Summarised with average...")

    #######
    ## Step fin
    ## Save the tidy set
    #######
    save_output_file("samsung_tidy", samsung_tidy_data)
    print("Ananlysis Done!")
}