library(dplyr)

#download an unzip the dataset to a Data directory in the working directory
#first make sure a Data directory exists in this working directory
download <- FALSE
if(!dir.exists("Data")){
    dir.create("Data")
    #assume if the data directory does not exists, the data files need to be downloaded
    download <- TRUE
}

if(download)
{
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Data/UCIHAR.zip")
    unzip("Data/UCIHAR.zip", exdir="Data", overwrite=TRUE)
}

fileTypes <- c("test", "train")
basePath <- "Data/UCI HAR Dataset"
inertialPath <- "/Inertial Signals"
files <- c("subject_%s.txt", "y_%s.txt", "X_%s.txt")

#column names for the subjects and activities are set here
#set up the columns names based on the features.txt file for the measure columns
columnNames <- c("DataType", "Subject", "Activity")
featureNames <- as.vector(t(read.table(file.path(basePath, "features.txt"))[,2]))
columnNames <- c(columnNames, featureNames)

#1. merge the test and training sets into one data set

typed_files_df <- vector("list", 2)
typed_idx <- 1
for(type in fileTypes){

    for(f in files){
        tbl <- read.table(file.path(basePath, type, sprintf(f, type)), stringsAsFactors = FALSE)
        if(!exists("files_df"))
            files_df = data.frame(rep(type, nrow(tbl)))
        files_df = cbind(files_df, tbl)
    }
    
    #label the columns in the data set with descriptive variable names
    #This is actually number 4 in the assignment, but I found it easier here
    names(files_df) <- columnNames
    
    typed_files_df[[typed_idx]] <- files_df
    typed_idx <- typed_idx + 1
    rm(files_df)
}
rm(tbl)
full_table <- rbind(typed_files_df[[1]], typed_files_df[[2]])

#2. Extracts only the measurements on the mean and standard deviation for each measurement.

#just pull all of the columns with mean() or std() in the column name
full_table <- full_table[,c(1:3, grep("mean()|std()", columnNames))]

#3. Uses descriptive activity names to name the activities in the data set

#read in the activity labels file to get descriptive names
activityLabels <- read.table(file.path(basePath, "activity_labels.txt"), 
                             stringsAsFactors = FALSE, 
                             colClasses = "character",
                             col.names = c("Activity", "ActivityLabel"))

#I'm going to replace the integer Activity column in the table with a character descriptive value
#so the data type needs to be character
full_table$Activity <- as.character(full_table$Activity)

#replace the id value of Activity with a descriptive name
full_table$Activity <- sapply(full_table$Activity, function(id) { activityLabels$ActivityLabel[activityLabels$Activity == id] } )
rm(activityLabels)

#4. Appropriately labels the data set with descriptive variable names.

#This was done during the data load by naming the measurements using the features.txt file

#5. From the data set in step 4, creates a second, independent tidy data set with 
#the average of each variable for each activity and each subject.

#I'm using dplyr to group and summarise the table
tbl_full <- tbl_df(full_table) 
tbl_full <- select(tbl_full, -DataType) %>% group_by(Subject, Activity)

for(i in 3:ncol(tbl_full)){
    means <- mean(tbl_full[[i]], na.rm=TRUE)
}

tbl_means <- summarise_each(tbl_full, funs(mean))
script.dir <- dirname(sys.frame(1)$ofile)
write.csv(tbl_means, file= file.path(script.dir, "summarised.csv"))
