# data

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# variables

The code [run_analysis.R](run_analysis.R) extracts only the measurements on the mean and standard deviation for each measurement.

Afterwards, the variables' name changed according the next table:

1. "tBodyAcc-mean()-X" -> "time_body_accelerometer_mean_x"      
2. "tBodyAcc-mean()-Y" -> "time_body_accelerometer_mean_y"      
3. "tBodyAcc-mean()-Z" -> "time_body_accelerometer_mean_z"      
4. "tBodyAcc-std()-X" -> "time_body_accelerometer_std_x"
5. "tBodyAcc-std()-Y" -> "time_body_accelerometer_std_y"
6. "tBodyAcc-std()-Z" -> "time_body_accelerometer_std_z"
7. "tGravityAcc-mean()-X" -> "time_gravity_accelerometer_mean_x"   
8. "tGravityAcc-mean()-Y" -> ""time_gravity_accelerometer_mean_y"   
9. "tGravityAcc-mean()-Z" -> ""time_gravity_accelerometer_mean_z"   
10. "tGravityAcc-std()-X" -> ""time_gravity_accelerometer_std_x"    
11. "tGravityAcc-std()-Y" -> ""time_gravity_accelerometer_std_y"    
12. "tGravityAcc-std()-Z" -> ""time_gravity_accelerometer_std_z"    
13. "tBodyAccJerk-mean()-X" -> ""time_body_accelerometer_jerk_mean_x" 
14. "tBodyAccJerk-mean()-Y" -> ""time_body_accelerometer_jerk_mean_y" 
15. "tBodyAccJerk-mean()-Z" -> ""time_body_accelerometer_jerk_mean_z" 
16. "tBodyAccJerk-std()-X" -> ""time_body_accelerometer_jerk_std_x"  
17. "tBodyAccJerk-std()-Y" -> ""time_body_accelerometer_jerk_std_y"  
18. "tBodyAccJerk-std()-Z" -> ""time_body_accelerometer_jerk_std_z"  
19. "tBodyGyro-mean()-X" -> "time_body_gyroscope_mean_x"  
20. "tBodyGyro-mean()-Y"" -> ""time_body_gyroscope_mean_y"  
21. "tBodyGyro-mean()-Z"" -> ""time_body_gyroscope_mean_z"  
22. "tBodyGyro-std()-X"" -> ""time_body_gyroscope_std_x"   
23. "tBodyGyro-std()-Y"" -> ""time_body_gyroscope_std_y"   
24. "tBodyGyro-std()-Z"" -> ""time_body_gyroscope_std_z"   
25. "tBodyGyroJerk-mean()-X"" -> ""time_body_gyroscope_jerk_mean_x"     
26. "tBodyGyroJerk-mean()-Y"" -> ""time_body_gyroscope_jerk_mean_y"     
27. "tBodyGyroJerk-mean()-Z"" -> ""time_body_gyroscope_jerk_mean_z"     
28. "tBodyGyroJerk-std()-X" -> ""time_body_gyroscope_jerk_std_x"      
29. "tBodyGyroJerk-std()-Y" -> ""time_body_gyroscope_jerk_std_y"      
30. "tBodyGyroJerk-std()-Z" -> ""time_body_gyroscope_jerk_std_z"      
31. "tBodyAccMag-mean()"" -> ""time_body_accelerometer_magnitude_mean"  
32. "tBodyAccMag-std()"" -> ""time_body_accelerometer_magnitude_std"   
33. "tGravityAccMag-mean" -> ""time_gravity_accelerometer_magnitude_mean"
34. "tGravityAccMag-std" -> ""time_gravity_accelerometer_magnitude_std"
35. "tBodyAccJerkMag-mean()"" -> ""time_body_accelerometer_jerk_magnitude_mean"     
36. "tBodyAccJerkMag-std" -> ""time_body_accelerometer_jerk_magnitude_std"      
37. "tBodyGyroMag-mean" -> ""time_body_gyroscope_magnitude_mean"  
38. "tBodyGyroMag-std()"" -> ""time_body_gyroscope_magnitude_std"   
39. "tBodyGyroJerkMag-mean()"" -> ""time_body_gyroscope_jerk_magnitude_mean" 
40. "tBodyGyroJerkMag-std()"" -> ""time_body_gyroscope_jerk_magnitude_std"  
41. "fBodyAcc-mean()-X"" -> ""frequency_body_accelerometer_mean_x" 
42. "fBodyAcc-mean()-Y"" -> ""frequency_body_accelerometer_mean_y" 
43. "fBodyAcc-mean()-Z"" -> ""frequency_body_accelerometer_mean_z" 
44. "fBodyAcc-std()-X" -> ""frequency_body_accelerometer_std_x"  
45. "fBodyAcc-std()-Y" -> ""frequency_body_accelerometer_std_y"  
46. "fBodyAcc-std()-Z" -> ""frequency_body_accelerometer_std_z"  
47. "fBodyAccJerk-mean()-X" -> ""frequency_body_accelerometer_jerk_mean_x"
58. "fBodyAccJerk-mean()-Y" -> ""frequency_body_accelerometer_jerk_mean_y"
49. "fBodyAccJerk-mean()-Z" -> ""frequency_body_accelerometer_jerk_mean_z"
50. "fBodyAccJerk-std()-X" -> ""frequency_body_accelerometer_jerk_std_x" 
51. "fBodyAccJerk-std()-Y" -> ""frequency_body_accelerometer_jerk_std_y" 
52. "fBodyAccJerk-std()-Z" -> ""frequency_body_accelerometer_jerk_std_z" 
53. "fBodyGyro-mean()-X"" -> ""frequency_body_gyroscope_mean_x"     
54. "fBodyGyro-mean()-Y"" -> ""frequency_body_gyroscope_mean_y"     
55. "fBodyGyro-mean()-Z"" -> ""frequency_body_gyroscope_mean_z"     
56. "fBodyGyro-std()-X"" -> ""frequency_body_gyroscope_std_x"      
57. "fBodyGyro-std()-Y"" -> ""frequency_body_gyroscope_std_y"      
58. "fBodyGyro-std()-Z"" -> ""frequency_body_gyroscope_std_z"      
59. "fBodyAccMag-mean()"" -> ""frequency_body_accelerometer_magnitude_mean"     
60. "fBodyAccMag-std()"" -> ""frequency_body_accelerometer_magnitude_std"      
61. "fBodyBodyAccJerkMag-mean()"" -> ""frequency_body_accelerometer_jerk_magnitude_mean"
62. "fBodyBodyAccJerkMag-std()"" -> ""frequency_body_accelerometer_jerk_magnitude_std" 
63. "fBodyBodyGyroMag-mean()"" -> ""frequency_body_gyroscope_magnitude_mean" 
64. "fBodyBodyGyroMag-std()"" -> ""frequency_body_gyroscope_magnitude_std"  
65. "fBodyBodyGyroJerkMag-mean" -> ""frequency_body_gyroscope_jerk_magnitude_mea"    
66. "fBodyBodyGyroJerkMag-std()"" -> ""frequency_body_gyroscope_jerk_magnitude_std" 

The output has saved in the file [tidy_data.txt](tidy_data.txt).

# transformations
From the data set in the file [tidy_data.txt](tidy_data.txt), it has been created a second, independent tidy data set with the average of each variable for each activity and each subject. The output has saved in the file [tidy_data_avg.txt](tidy_data_avg.txt).
