Code Book
==

This is the code book of the project. Here is described all the variables
that are generated from the script and what transformation it performs.

### The Source

The source of the data that we transformed is form the Machine Learning Repository form UCI
([http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

The code will download the code automatically but one can download manually and change the variables
set at `constants.R` to perform the transformations.

The source data was collected during an experiment using the triaxial acceleration from the accelerometer of a
smartphone. more detailed on the link of the repository.

### Data Transformation

This project takes all the variables on each subject and activity. Organize then in one file and then
calculates the average of each variable with the subject performing each activity.

All the name of the sources and configurations can be found at the `constants.R` file.

To get to the result we performed the following steps.

##### 1) Merges the training and the test sets to create one data set.

First we extracted the two sets. The *Training Set* (`TRAINING_SET`) and the *Test Set* (`TEST_SET`).
Next we read the name of the variables of the sets (`FEATURES`) and associated each of then
to a specific column. Then we merged the data to one specific data set.

##### 2) Extracts only the measurements on the mean and standard deviation for each measurement.

I this part we needed to extract only the mean and the standard deviation, which is represented by the
name std. Looking at the README.txt of the original data. We could notice that all the means and
standard deviation has respectively those strings `mean()` or `std()`. So a regular expression was applied to
extract only those variables form the data set.

##### 3) Uses descriptive activity names to name the activities in the data set

Now we had to add the description of the activity on our dataset. We Extracted the activity for each
set (`TRAINING_LABELS` and `TEST_LABELS`) we read the string value of the labels (`ACTIVITY_LABELS`)
and finally add the collumn to the data set.

##### 4) Appropriately labels the data set with descriptive variable names.

Now it is time to clean the name of our variables for that we applied the principle of tidy data variable
in which our variables cannot have the underscore character, neither parenthesis. And they need to be all
lowercase.

##### 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To finalize this operation first we needed to extract the subjects (`TRAINING_SUBJECTS` and `TEST_SUBJECTS`)
and add then as a column to our data set.

Finally it was possible to perform a aggregation operational in which we calculate the mean of each
variable grouped by subject and activity.

### Dictionary

Our final tiny data has the following values

|Variable Name|Description|
|---|---|
subject| The id of the subject
activity| <div>A string of the activity of the subject was doing 
         "walking"
         "walking_upstairs"
         "walking_downstairs"
         "sitting"
         "standing"
         "laying"
         </div>
tbodyaccmeanx| numeric value of the accelerometer
tbodyaccmeany| numeric value of the accelerometer
tbodyaccmeanz| numeric value of the accelerometer
tbodyaccstdx| numeric value of the accelerometer
tbodyaccstdy| numeric value of the accelerometer
tbodyaccstdz| numeric value of the accelerometer
tgravityaccmeanx| numeric value of the accelerometer
tgravityaccmeany| numeric value of the accelerometer
tgravityaccmeanz| numeric value of the accelerometer
tgravityaccstdx| numeric value of the accelerometer
tgravityaccstdy| numeric value of the accelerometer
tgravityaccstdz| numeric value of the accelerometer
tbodyaccjerkmeanx| numeric value of the accelerometer
tbodyaccjerkmeany| numeric value of the accelerometer
tbodyaccjerkmeanz| numeric value of the accelerometer
tbodyaccjerkstdx| numeric value of the accelerometer
tbodyaccjerkstdy| numeric value of the accelerometer
tbodyaccjerkstdz| numeric value of the accelerometer
tbodygyromeanx| numeric value of the accelerometer
tbodygyromeany| numeric value of the accelerometer
tbodygyromeanz| numeric value of the accelerometer
tbodygyrostdx| numeric value of the accelerometer
tbodygyrostdy| numeric value of the accelerometer
tbodygyrostdz| numeric value of the accelerometer
tbodygyrojerkmeanx| numeric value of the accelerometer
tbodygyrojerkmeany| numeric value of the accelerometer
tbodygyrojerkmeanz| numeric value of the accelerometer
tbodygyrojerkstdx| numeric value of the accelerometer
tbodygyrojerkstdy| numeric value of the accelerometer
tbodygyrojerkstdz| numeric value of the accelerometer
tbodyaccmagmean| numeric value of the accelerometer
tbodyaccmagstd| numeric value of the accelerometer
tgravityaccmagmean| numeric value of the accelerometer
tgravityaccmagstd| numeric value of the accelerometer
tbodyaccjerkmagmean| numeric value of the accelerometer
tbodyaccjerkmagstd| numeric value of the accelerometer
tbodygyromagmean| numeric value of the accelerometer
tbodygyromagstd| numeric value of the accelerometer
tbodygyrojerkmagmean| numeric value of the accelerometer
tbodygyrojerkmagstd| numeric value of the accelerometer
fbodyaccmeanx| numeric value of the accelerometer
fbodyaccmeany| numeric value of the accelerometer
fbodyaccmeanz| numeric value of the accelerometer
fbodyaccstdx| numeric value of the accelerometer
fbodyaccstdy| numeric value of the accelerometer
fbodyaccstdz| numeric value of the accelerometer
fbodyaccjerkmeanx| numeric value of the accelerometer
fbodyaccjerkmeany| numeric value of the accelerometer
fbodyaccjerkmeanz| numeric value of the accelerometer
fbodyaccjerkstdx| numeric value of the accelerometer
fbodyaccjerkstdy| numeric value of the accelerometer
fbodyaccjerkstdz| numeric value of the accelerometer
fbodygyromeanx| numeric value of the accelerometer
fbodygyromeany| numeric value of the accelerometer
fbodygyromeanz| numeric value of the accelerometer
fbodygyrostdx| numeric value of the accelerometer
fbodygyrostdy| numeric value of the accelerometer
fbodygyrostdz| numeric value of the accelerometer
fbodyaccmagmean| numeric value of the accelerometer
fbodyaccmagstd| numeric value of the accelerometer
fbodybodyaccjerkmagmean| numeric value of the accelerometer
fbodybodyaccjerkmagstd| numeric value of the accelerometer
fbodybodygyromagmean| numeric value of the accelerometer
fbodybodygyromagstd| numeric value of the accelerometer
fbodybodygyrojerkmagmean| numeric value of the accelerometer
fbodybodygyrojerkmagstd| numeric value of the accelerometer

