Getting and Cleaning Data Course Project
==

This is the course projet for get and cleaning data

This project consists in creating a script called `run_analysis.R` that does the following

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## About the code

This code is created using only base R libraries. No need to isntall any third party dependencies.
This way is possible to ensure that the code will run fine across any plataform that has R.

The structure of the code is the following

    .
    ├── constants.R
    ├── get_data.R
    └── run_analysis.R

`constants.R` is responsable to declare the constants of the project. Using it makes easier to configure
folder locations, flenames from the source and other kind of configurations.

`get_data.R` is responsable to create the folder structure, download the data and unzip it in case it
does not exists.

`run_analysis.R` is the file responsable to run all the operation to transform the raw data in tiny data.
It writes the final result of the transformation into the file that is defined by the constant `FINAL_FILE_NAME`.

The `run_analysis.R` and the `get_data.R` files run independently. if you run `run_analysis.R` it will check
if the data is already in place, it is not it will download it properly and then execute the code.

Every step of the transformation is well documented into the source code.

## Run the code

To  get the data for the project just go to the current directory and execute

```
Rscript get_data.R
```

To perform the full operation of download the data (it will donwload only if it is missing) and to
generate the tidy data just run

```
Rscript run_analysis.R
```

## About the data

You can find a more detailed information about the data at the [code book](CodeBook.md) file in this repo.

