# Getting-and-Cleaning-Data-Course-Project

The data for the project is [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## About the file called `run_analysis.R`

This file contains the code that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## About the code book

The [code book](CodeBook.md) contains the information about variables. Briefly, this file has the the information about changing of variables' names, furthermore, this file has informatión about data transformation and the output called [tidy_data_avg.txt](tidy_data_avg.txt).