
## load R libraries
library(dplyr)
#library(data.table)
library(tidyr)
library(plyr)
setwd("C:/R")

# downloads data files from sourcefileUrl writes files to destfile
downloaddata <- function(sourcefileUrl,destfile) {
    ## Det data to analyze
    download.file(sourcefileUrl,destfile=destfile)
    
    ###Unzip DataSet to /data directory
    unzip(zipfile=destfile,exdir="./data")
  
}

# read datafiles into list
readindata <- function(datafilesPath) {
    dfsubtrain <- read.table(file.path(datafilesPath, "train", "subject_train.txt"))
    dfsubtest  <- read.table(file.path(datafilesPath, "test" , "subject_test.txt" ))
    
    dfytrain <- read.table(file.path(datafilesPath, "train", "Y_train.txt"))
    dfytest  <- read.table(file.path(datafilesPath, "test" , "Y_test.txt" ))
    
    dfxtrain <- read.table(file.path(datafilesPath, "train", "X_train.txt" ))
    dfxtest  <- read.table(file.path(datafilesPath, "test" , "X_test.txt" ))
    
    dfx <- rbind(dfxtrain, dfxtest)
    dfy <- rbind(dfytrain, dfytest)
    dfsub <-rbind(dfsubtrain, dfsubtest)
    
    list(subjects=dfsub, xdata=dfx, ydata=dfy)
}

# create data frame where the std and mean variables are extracted from merged data set
getmeanstd <- function(df, filesPath) { 
    # Read the feature list file 
    dfFeatures <- read.table(file.path(filesPath, "features.txt")) 
    # Find the mean and std columns 

    meancol <- sapply(dfFeatures[,2], function(x) grepl("mean()", x, fixed=T)) 
    stdcol <- sapply(dfFeatures[,2], function(x) grepl("std()", x, fixed=T)) 
    # Extract them from the data 
    edf <- df[, (meancol | stdcol)] 
    colnames(edf) <- dfFeatures[(meancol | stdcol), 2]
    edf
    
  }   

# converts activity ids to descriptive names in the activity column
applyactivities <- function(df, filesPath) { 
   # Use descriptive activity names to name the activities in the dataset
    colnames(df) <- "activity"
    df$activity[df$activity == 1] = "WALKING" 
    df$activity[df$activity == 2] = "WALKING_UPSTAIRS" 
    df$activity[df$activity == 3] = "WALKING_DOWNSTAIRS" 
    df$activity[df$activity == 4] = "SITTING" 
    df$activity[df$activity == 5] = "STANDING" 
    df$activity[df$activity == 6] = "LAYING" 
    df 
}   

# Main clean data routine
cleandata <- function() {
    
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    destfile <- "./data/SmartPhoneAcceleratorData.zip"
    downloaddata(fileUrl,destfile)
    datafilesPath <- "./data/UCI HAR Dataset"
    ldatasets <- readindata(datafilesPath)
    #cleanx <- getmeanstd(ldatasets$xdata, datafilesPath)
    
    dfFeatures <- read.table(file.path(filesPath, "features.txt")) 
    # Find the mean and std columns 
    cleanx <- getmeanstd(ldatasets$xdata, datafilesPath)
    cleany <- applyactivities(ldatasets$ydata, datafilesPath)
    
    # clean up variable name to subject
    colnames(ldatasets$subject) <- c("subject")
    
    ## order binding to make merged data frame readable
    dfMerged <- cbind(ldatasets$subject, cleany, cleanx )
    
    # clean up field names
    colnames(dfMerged) <- gsub("std\\(\\)", "std", colnames(dfMerged))
    colnames(dfMerged) <- gsub("mean\\(\\)", "mean", colnames(dfMerged))
    colnames(dfMerged) <- gsub("^t", "time", colnames(dfMerged))
    colnames(dfMerged) <- gsub("^f", "freq", colnames(dfMerged))
    colnames(dfMerged) <- gsub("Gyro", "gyroscope", colnames(dfMerged))
    colnames(dfMerged) <- gsub("Acc", "accelerator", colnames(dfMerged))
    colnames(dfMerged) <- gsub("Mag", "magnitude", colnames(dfMerged))
    colnames(dfMerged) <- gsub("BodyBody", "body", colnames(dfMerged))
    colnames(dfMerged) <- tolower(colnames(dfMerged))
    
    #write.table(dfMerged, "TidyData.txt", row.name=FALSE)
    #write.table(colnames(dfMerged), "CodeBook.md", row.name=FALSE)
    
    # get mean of variables by subject and activity
    dfMelted <- melt(dfMerged, id = c("subject", "activity")) 
    dfMelted <- dcast(dfMelted, subject + activity ~ variable, mean) 
    #write.table(dfMelted, "tidy.txt", row.names = FALSE, quote = FALSE)
}

# Execute main funtion
cleandata()
