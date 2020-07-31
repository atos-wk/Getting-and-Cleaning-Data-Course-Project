# Loading the necessary libraries
library(tidyverse)

# Loading table with activities
activities <- read.table('./UCI HAR Dataset/activity_labels.txt',
                         col.names = c('act_id', 'activity')) %>%
    tbl_df

# Loading table with features
features <- read.table('./UCI HAR Dataset/features.txt',
                       col.names = c('feat_id', 'feature')) %>%
    tbl_df

# Loading table with subject's id to every register for train data set
train_subject <- read.table('./UCI HAR Dataset/train/subject_train.txt',
                            col.names = 'subject') %>%
    tbl_df

# Loading the table with the activities of each subject for train data set
train_activity <- read.table('./UCI HAR Dataset/train/y_train.txt',
                             col.names = 'activity') %>%
    tbl_df

# Loading the table with train data set
train_data <- read.table('./UCI HAR Dataset/train/X_train.txt',
                         col.names = features$feature) %>%
    tbl_df

# Loading table with subject's id to every register for test data set
test_subject <- read.table('./UCI HAR Dataset/test/subject_test.txt',
                           col.names = 'subject') %>%
    tbl_df

# Loading the table with the activities of each subject for test data set
test_activity <- read.table('./UCI HAR Dataset/test/y_test.txt',
                            col.names = 'activity') %>%
    tbl_df

# Loading the table with test data set
test_data <- read.table('./UCI HAR Dataset/test/X_test.txt',
                        col.names = features$feature) %>%
    tbl_df

# Joining the parts of train data set
train <- bind_cols(train_subject, train_activity, train_data)

# Joining the parts of test data set
test <- bind_cols(test_subject, test_activity, test_data)

#################################################################
# 1. Merges the training and the test sets to create one data set
data_set <- bind_rows(train, test)

###########################################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
tidy_data <- data_set %>%
    select(1,2,grep('mean\\.|std', colnames(.)))

###########################################################################
# 3. Uses descriptive activity names to name the activities in the data set
tidy_data <- tidy_data %>%
    mutate(activity = factor(activity,
                             levels = as.character(activities$act_id),
                             labels = activities$activity))

######################################################################
# 4. Appropriately labels the data set with descriptive variable names
colnames(tidy_data) <- colnames(tidy_data) %>%
    gsub(x = ., pattern = '([Bb]ody)+',replacement = 'body') %>%
    gsub(x = ., pattern = '^t',replacement = 'time_') %>%
    gsub(x = ., pattern = '^f',replacement = 'frequency_') %>%
    gsub(x = ., pattern = '[Aa]cc',replacement = '_accelerometer_') %>%
    gsub(x = ., pattern = '[Gg]yro',replacement = '_gyroscope_') %>%
    gsub(x = ., pattern = '[Mm]ag',replacement = '_magnitude_') %>%
    gsub(x = ., pattern = '\\.\\.',replacement = '') %>%
    gsub(x = ., pattern = '\\.',replacement = '_') %>%
    gsub(x = ., pattern = '__',replacement = '_') %>%
    tolower

# Saving the output
write.table(x = tidy_data, file = './tidy_data.txt', row.name=FALSE) 

# 5. From the data set in step 4, creates a second, independent tidy data set with the average
# of each variable for each activity and each subject.
tidy_data_avg <- tidy_data %>%
    group_by(subject, activity) %>%
    summarize_all(mean)

# Saving the output
write.table(x = tidy_data_avg, file = './tidy_data_avg.txt', row.name=FALSE) 
