# This file contains all the constatns that is used in the project

DATA_DIR <- 'data'

DATASET_URL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
DATASET_DEST <- paste(DATA_DIR,'/dataset.zip', sep='')

UNZIPED_DATASET_DIR <- paste(DATA_DIR, '/UCI HAR Dataset', sep='')

FEATURES <- paste(UNZIPED_DATASET_DIR, '/features.txt', sep='')

TRAINING_SET <- paste(UNZIPED_DATASET_DIR, '/train/X_train.txt', sep='')
TEST_SET <- paste(UNZIPED_DATASET_DIR, '/test/X_test.txt', sep='')

TRAINING_LABELS <- paste(UNZIPED_DATASET_DIR, '/train/y_train.txt', sep='')
TEST_LABELS <- paste(UNZIPED_DATASET_DIR, '/test/y_test.txt', sep='')
