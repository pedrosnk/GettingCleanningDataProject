
source('get_data.R')

# load the files with the features columns
features <- read.table(FEATURES, header=FALSE)[,2] # extract only the list of the feactures
activity_labels <- read.table(ACTIVITY_LABELS, header=FALSE, colClasses=c('numeric', 'character'))

test_set <- read.table(TEST_SET, header=FALSE, colClasses=rep('numeric', 561), col.names=features)
training_set <- read.table(TRAINING_SET, header=FALSE, colClasses=rep('numeric', 561), col.names=features)

test_labels <- read.table(TEST_LABELS, header=FALSE, colClasses=c('numeric'))
training_labels <- read.table(TRAINING_LABELS, header=FALSE, colClasses=c('numeric'))

# 1) Merges the training and the test sets to create one data set.
data_set <- rbind(test_set, training_set)

# 2) Extracts only the measurements on the mean and standard deviation for each measurement
# extract only the columns that match the regular expression to detect if the string ends with -mean() or -std() as described at the features_info.txt file
# then extract only those datas.
extracted_columns <- grep('-(mean|std)\\(\\)', features)
data_set <- data_set[, extracted_columns]

# 3) Uses descriptive activity names to name the activities in the data set
# add the activities
data_labels_value <- rbind(test_labels, training_labels)
# create the factors of the activity labels e atualizando essa lista
activity_factors <- factor(tolower(activity_labels[,2]))
data_labels_value$V1 <- activity_factors[data_labels_value$V1]
# set the name of the activity column
colnames(data_labels_value) <- c('activity')
# finally add the activities to the data set
data_set <- cbind(data_set, data_labels_value)

