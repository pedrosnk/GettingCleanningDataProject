
data_dir <- 'data'
project_dataset_url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
project_dataset_dest <- paste(data_dir,'/dataset.zip', sep='')

unziped_dataset_dir <- paste('data', '/UCI HAR Dataset', sep='')

if(!file.exists('data')) {
  dir.create('data')
}

if(!file.exists(project_dataset_dest)) {
  download.file(project_dataset_url, destfile=project_dataset_dest, method='curl')
}

if(!file.exists(unziped_dataset_dir)){
  unzip(project_dataset_dest, exdir=data_dir)
}
