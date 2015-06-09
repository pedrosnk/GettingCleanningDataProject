
source('get_data.R')

# load the files with the features columns
features <- read.table(FEATURES, header=FALSE)[,2] # extract only the list of the feactures
test_set <- read.table(TEST_SET, header=FALSE, colClasses=rep('numeric', 561), col.names=features)
training_set <- read.table(TRAINING_SET, header=FALSE, colClasses=rep('numeric', 561), col.names=features)

# 1) Merges the training and the test sets to create one data set.
data_set <- rbind(test_set, training_set)

# 2) Extracts only the measurements on the mean and standard deviation for each measurement
# extract only the columns that match the regular expression to detect if the string ends with mean() or std()
# then extract only those datas.
extracted_columns <- grep('(mean|std)\\(\\)', features)
data_set <- data_set[, extracted_columns]

