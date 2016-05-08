##Code Book
##### *Source*:
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

###Dataset information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Atribute Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 

- A 66-feature vector with `mean()` and `std()` of time and frequency domain variables as output 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Analysis output and variables
### mean & std variables extracted - `samsung_req.csv`

1. timeBodyAccelerometer-mean()-X
2. timeBodyAccelerometer-mean()-Y
3. timeBodyAccelerometer-mean()-Z
4. timeBodyAccelerometer-std()-X
5. timeBodyAccelerometer-std()-Y
6. timeBodyAccelerometer-std()-Z
7. timeGravityAccelerometer-mean()-X
8. timeGravityAccelerometer-mean()-Y
9. timeGravityAccelerometer-mean()-Z
10. timeGravityAccelerometer-std()-X
11. timeGravityAccelerometer-std()-Y
12. timeGravityAccelerometer-std()-Z
13. timeBodyAccelerometerJerk-mean()-X
14. timeBodyAccelerometerJerk-mean()-Y
15. timeBodyAccelerometerJerk-mean()-Z
16. timeBodyAccelerometerJerk-std()-X
17. timeBodyAccelerometerJerk-std()-Y
18. timeBodyAccelerometerJerk-std()-Z
19. timeBodyGyroscope-mean()-X
20. timeBodyGyroscope-mean()-Y
21. timeBodyGyroscope-mean()-Z
22. timeBodyGyroscope-std()-X
23. timeBodyGyroscope-std()-Y
24. timeBodyGyroscope-std()-Z
25. timeBodyGyroscopeJerk-mean()-X
26. timeBodyGyroscopeJerk-mean()-Y
27. timeBodyGyroscopeJerk-mean()-Z
28. timeBodyGyroscopeJerk-std()-X
29. timeBodyGyroscopeJerk-std()-Y
30. timeBodyGyroscopeJerk-std()-Z
31. timeBodyAccelerometerMagnitude-mean()
32. timeBodyAccelerometerMagnitude-std()
33. timeGravityAccelerometerMagnitude-mean()
34. timeGravityAccelerometerMagnitude-std()
35. timeBodyAccelerometerJerkMagnitude-mean()
36. timeBodyAccelerometerJerkMagnitude-std()
37. timeBodyGyroscopeMagnitude-mean()
38. timeBodyGyroscopeMagnitude-std()
39. timeBodyGyroscopeJerkMagnitude-mean()
40. timeBodyGyroscopeJerkMagnitude-std()
41. frequencyBodyAccelerometer-mean()-X
42. frequencyBodyAccelerometer-mean()-Y
43. frequencyBodyAccelerometer-mean()-Z
44. frequencyBodyAccelerometer-std()-X
45. frequencyBodyAccelerometer-std()-Y
46. frequencyBodyAccelerometer-std()-Z
47. frequencyBodyAccelerometerJerk-mean()-X
48. frequencyBodyAccelerometerJerk-mean()-Y
49. frequencyBodyAccelerometerJerk-mean()-Z
50. frequencyBodyAccelerometerJerk-std()-X
51. frequencyBodyAccelerometerJerk-std()-Y
52. frequencyBodyAccelerometerJerk-std()-Z
53. frequencyBodyGyroscope-mean()-X
54. frequencyBodyGyroscope-mean()-Y
55. frequencyBodyGyroscope-mean()-Z
56. frequencyBodyGyroscope-std()-X
57. frequencyBodyGyroscope-std()-Y
58. frequencyBodyGyroscope-std()-Z
59. frequencyBodyAccelerometerMagnitude-mean()
60. frequencyBodyAccelerometerMagnitude-std()
61. frequencyBodyBodyAccelerometerJerkMagnitude-mean()
62. frequencyBodyBodyAccelerometerJerkMagnitude-std()
63. frequencyBodyBodyGyroscopeMagnitude-mean()
64. frequencyBodyBodyGyroscopeMagnitude-std()
65. frequencyBodyBodyGyroscopeJerkMagnitude-mean()
66. frequencyBodyBodyGyroscopeJerkMagnitude-std()
67. Subject
68. Activity

### Tidy set with average of variables for subject and activity - `samsung_tidy.csv`
1. Subject
2. Activity
3. mean_of_timeBodyAccelerometer-mean()-X
4. mean_of_timeBodyAccelerometer-mean()-Y
5. mean_of_timeBodyAccelerometer-mean()-Z
6. mean_of_timeBodyAccelerometer-std()-X
7. mean_of_timeBodyAccelerometer-std()-Y
8. mean_of_timeBodyAccelerometer-std()-Z
9. mean_of_timeGravityAccelerometer-mean()-X
10. mean_of_timeGravityAccelerometer-mean()-Y
11. mean_of_timeGravityAccelerometer-mean()-Z
12. mean_of_timeGravityAccelerometer-std()-X
13. mean_of_timeGravityAccelerometer-std()-Y
14. mean_of_timeGravityAccelerometer-std()-Z
15. mean_of_timeBodyAccelerometerJerk-mean()-X
16. mean_of_timeBodyAccelerometerJerk-mean()-Y
17. mean_of_timeBodyAccelerometerJerk-mean()-Z
18. mean_of_timeBodyAccelerometerJerk-std()-X
19. mean_of_timeBodyAccelerometerJerk-std()-Y
20. mean_of_timeBodyAccelerometerJerk-std()-Z
21. mean_of_timeBodyGyroscope-mean()-X
22. mean_of_timeBodyGyroscope-mean()-Y
23. mean_of_timeBodyGyroscope-mean()-Z
24. mean_of_timeBodyGyroscope-std()-X
25. mean_of_timeBodyGyroscope-std()-Y
26. mean_of_timeBodyGyroscope-std()-Z
27. mean_of_timeBodyGyroscopeJerk-mean()-X
28. mean_of_timeBodyGyroscopeJerk-mean()-Y
29. mean_of_timeBodyGyroscopeJerk-mean()-Z
30. mean_of_timeBodyGyroscopeJerk-std()-X
31. mean_of_timeBodyGyroscopeJerk-std()-Y
32. mean_of_timeBodyGyroscopeJerk-std()-Z
33. mean_of_timeBodyAccelerometerMagnitude-mean()
34. mean_of_timeBodyAccelerometerMagnitude-std()
35. mean_of_timeGravityAccelerometerMagnitude-mean()
36. mean_of_timeGravityAccelerometerMagnitude-std()
37. mean_of_timeBodyAccelerometerJerkMagnitude-mean()
38. mean_of_timeBodyAccelerometerJerkMagnitude-std()
39. mean_of_timeBodyGyroscopeMagnitude-mean()
40. mean_of_timeBodyGyroscopeMagnitude-std()
41. mean_of_timeBodyGyroscopeJerkMagnitude-mean()
42. mean_of_timeBodyGyroscopeJerkMagnitude-std()
43. mean_of_frequencyBodyAccelerometer-mean()-X
44. mean_of_frequencyBodyAccelerometer-mean()-Y
45. mean_of_frequencyBodyAccelerometer-mean()-Z
46. mean_of_frequencyBodyAccelerometer-std()-X
47. mean_of_frequencyBodyAccelerometer-std()-Y
48. mean_of_frequencyBodyAccelerometer-std()-Z
49. mean_of_frequencyBodyAccelerometerJerk-mean()-X
50. mean_of_frequencyBodyAccelerometerJerk-mean()-Y
51. mean_of_frequencyBodyAccelerometerJerk-mean()-Z
52. mean_of_frequencyBodyAccelerometerJerk-std()-X
53. mean_of_frequencyBodyAccelerometerJerk-std()-Y
54. mean_of_frequencyBodyAccelerometerJerk-std()-Z
55. mean_of_frequencyBodyGyroscope-mean()-X
56. mean_of_frequencyBodyGyroscope-mean()-Y
57. mean_of_frequencyBodyGyroscope-mean()-Z
58. mean_of_frequencyBodyGyroscope-std()-X
59. mean_of_frequencyBodyGyroscope-std()-Y
60. mean_of_frequencyBodyGyroscope-std()-Z
61. mean_of_frequencyBodyAccelerometerMagnitude-mean()
62. mean_of_frequencyBodyAccelerometerMagnitude-std()
63. mean_of_frequencyBodyBodyAccelerometerJerkMagnitude-mean()
64. mean_of_frequencyBodyBodyAccelerometerJerkMagnitude-std()
65. mean_of_frequencyBodyBodyGyroscopeMagnitude-mean()
66. mean_of_frequencyBodyBodyGyroscopeMagnitude-std()
67. mean_of_frequencyBodyBodyGyroscopeJerkMagnitude-mean()
68. mean_of_frequencyBodyBodyGyroscopeJerkMagnitude-std()