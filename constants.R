# This file contains all the constatns that is used in the project

DATA_DIR <- 'data'

ACTIVITY_COLUMN_NAME <- 'activity'
SUBJECT_COLUMN_NAME <- 'subject'

DATASET_URL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
DATASET_DEST <- paste(DATA_DIR,'/dataset.zip', sep='')

UNZIPED_DATASET_DIR <- paste(DATA_DIR, '/UCI HAR Dataset', sep='')

FEATURES <- paste(UNZIPED_DATASET_DIR, '/features.txt', sep='')
ACTIVITY_LABELS <- paste(UNZIPED_DATASET_DIR, '/activity_labels.txt', sep='')

TRAINING_SET <- paste(UNZIPED_DATASET_DIR, '/train/X_train.txt', sep='')
TEST_SET <- paste(UNZIPED_DATASET_DIR, '/test/X_test.txt', sep='')

TRAINING_LABELS <- paste(UNZIPED_DATASET_DIR, '/train/y_train.txt', sep='')
TEST_LABELS <- paste(UNZIPED_DATASET_DIR, '/test/y_test.txt', sep='')

TRAINING_SUBJECTS <- paste(UNZIPED_DATASET_DIR, '/train/subject_train.txt', sep='')
TEST_SUBJECTS <- paste(UNZIPED_DATASET_DIR, '/test/subject_test.txt', sep='')

AGGREGATION_FORMULA <- paste('. ~ ', SUBJECT_COLUMN_NAME, '+', ACTIVITY_COLUMN_NAME, sep='')
FINAL_FILE_NAME <- 'activity_means.txt'
