# Code Book

Analysis is based on the Human Activity Recognition Using Smartphones Dataset. Full explanation of underlying variables is available in the dataset directory. The below summarises the variables output in the results.txt file.


| Position |        Variable Name        |                    Variable                    | Values or Explanation |
|----------|-----------------------------|------------------------------------------------|-----------------------|
| 1        | activity_label              | Activity Label                                 |                       |
| 2        | subject_id                  | Subject ID                                     |                       |
| 3 - 5    | tBodyAcc-mean()-X/Y/Z       | Body Acceleration Mean XYZ                     |                       |
| 6 - 8    | tGravityAcc-mean()-X/Y/Z    | Gravity Acceleration Mean XYZ                  |                       |
| 9 - 11   | tBodyAccJerk-mean()-X/Y/Z   | Body Acceleration Jerk Mean XYZ                |                       |
| 12 - 14  | tBodyGyro-mean()-X/Y/Z      | Body Gyroscope Mean XYZ                        |                       |
| 15 - 17  | tBodyGyroJerk-mean()-X/Y/Z  | Body Gyroscope Jerk Mean XYZ                   |                       |
| 18       | tBodyAccMag-mean()          | Body Acceleration Magniture Mean               |                       |
| 19       | tGravityAccMag-mean()       | Gravity Acceleration Magnitude Mean            |                       |
| 20       | tBodyAccJerkMag-mean()      | Body Acceleration Jerk Magniture Mean          |                       |
| 21       | tBodyGyroMag-mean()         | Body Gyroscope Magnitude Mean                  |                       |
| 22       | tBodyGyroJerkMag-mean()     | Body Gyroscope Jerk Magniture Mean             |                       |
| 23 - 25  | fBodyAcc-mean()-X/Y/Z       | Body Acceleration Mean XYZ (FFT)               |                       |
| 26 - 28  | fBodyAccJerk-mean()-X/Y/Z   | Body Acceleration Jerk Mean XYZ (FFT)          |                       |
| 29 - 31  | fBodyGyro-mean()-X/Y/Z      | Body Gyroscope Mean XYZ (FFT)                  |                       |
| 32       | fBodyAccMag-mean()          | Body Acceleration Magnitude Mean (FFT)         |                       |
| 33       | fBodyBodyAccJerkMag-mean()  | Body Acceleration Jerk Magnitude Mean (FFT)    |                       |
| 34       | fBodyBodyGyroMag-mean()     | Body Gyroscope Magnitude Mean (FFT)            |                       |
| 35       | fBodyBodyGyroJerkMag-mean() | Body Gyroscope Jerk Magnitude Mean XYZ (FFT)   |                       |
| 36 - 38  | tBodyAcc-std()-X/Y/Z        | Body Acceleration Std Dev XYZ                  |                       |
| 39 - 41  | tGravityAcc-std()-X/Y/Z     | Gravity Acceleration Std Dev XYZ               |                       |
| 42 - 44  | tBodyAccJerk-std()-X/Y/Z    | Body Acceleration Jerk Std Dev XYZ             |                       |
| 45 - 47  | tBodyGyro-std()-X/Y/Z       | Body Gyroscope Std Dev XYZ                     |                       |
| 48 - 50  | tBodyGyroJerk-std()-X/Y/Z   | Body Gyroscope Jerk Std Dev XYZ                |                       |
| 51       | tBodyAccMag-std()           | Body Acceleration Magnitude Std Dev            |                       |
| 52       | tGravityAccMag-std()        | Body Acceleration Std Dev                      |                       |
| 53       | tBodyAccJerkMag-std()       | Body Acceleration Jerk Magnitude Std Dev       |                       |
| 54       | tBodyGyroMag-std()          | Body Gyroscope Magnitude Std Dev               |                       |
| 55       | tBodyGyroJerkMag-std()      | Body Gyroscope Jerk Magnitude Std Dev          |                       |
| 56 - 58  | fBodyAcc-std()-X/Y/Z        | Body Acceleration Std Dev XYZ (FFT)            |                       |
| 59 - 61  | fBodyAccJerk-std()-X/Y/Z    | Body Acceleration Jerk Std Dev XYZ  (FFT)      |                       |
| 62 - 64  | fBodyGyro-std()-X/Y/Z       | Body Gyroscope Std Dev XYZ  (FFT)              |                       |
| 65       | fBodyAccMag-std()           | Body Acceleration Magnitude Std Dev (FFT)      |                       |
| 66       | fBodyBodyAccJerkMag-std()   | Body Acceleration Jerk Magnitude Std Dev (FFT) |                       |
| 67       | fBodyBodyGyroMag-std()      | Body Gyroscope Magnitude Std Dev (FFT)         |                       |
| 68       | fBodyBodyGyroJerkMag-std()  | Body Gyroscope Jerk Magnitude Std Dev (FFT)    |                       |