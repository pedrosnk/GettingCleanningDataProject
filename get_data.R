source('constants.R')

if(!file.exists(DATA_DIR)){
  dir.create(DATA_DIR)
}

if(!file.exists(DATASET_DEST)) {
  if(.Platform$OS.type == 'windows'){
    download.file(DATASET_URL, destfile=DATASET_DEST)
  } else {
    download.file(DATASET_URL, destfile=DATASET_DEST, method='curl')
  }
}

if(!file.exists(UNZIPED_DATASET_DIR)){
  unzip(DATASET_DEST, exdir=DATA_DIR)
}
