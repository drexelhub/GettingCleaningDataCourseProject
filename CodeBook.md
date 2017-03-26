---
title: "CodeBook"
output: html_document
---

## Labeling Columns
#### Subject   
    The id of the person(subject) recording the information   
        Data Type: numeric   
        Possible Values: 1-30   
        
#### Activity   
    The name of the acivity being performed by the subject  
        Data Type: character   
        Possible Values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS   
## Measurement Columns

#### tBodyAcc-mean
    The mean of the means of the body acceleration in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:   
            Avg-tBodyAcc-mean()-X   
            Avg-tBodyAcc-mean()-Y   
            Avg-tBodyAcc-mean()-Z   

#### tBodyAcc-std
    The mean of the standard deviations of the body acceleration in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:   
            Avg-tBodyAcc-std()-X   
            Avg-tBodyAcc-std()-Y   
            Avg-tBodyAcc-std()-Z   

#### tGravityAcc-mean
    The the mean of the means of the gravity acceleration in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:   
            Avg-tGravityAcc-mean()-X   
            Avg-tGravityAcc-mean()-Y   
            Avg-tGravityAcc-mean()-Z   

#### tGravityAcc-std
    The mean of the standard deviations of the gravity acceleration in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:   
            Avg-tGravityAcc-std()-X   
            Avg-tGravityAcc-std()-Y   
            Avg-tGravityAcc-std()-Z 

#### tBodyAccJerk-mean
    The mean of the means of the body acceleration jerk in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:  
            Avg-tBodyAccJerk-mean()-X   
            Avg-tBodyAccJerk-mean()-Y   
            Avg-tBodyAccJerk-mean()-Z   

#### tBodyAccJerk-std
    The mean of the standard deviations of the body acceleration jerk in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group: 
            Avg-tBodyAccJerk-std()-X   
            Avg-tBodyAccJerk-std()-Y   
            Avg-tBodyAccJerk-std()-Z  

#### tBodyGyro-mean
    The mean of the mean of the body gyro in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-tBodyGyro-mean()-X   
            Avg-tBodyGyro-mean()-Y   
            Avg-tBodyGyro-mean()-Z   

#### tBodyGyro-std
    The mean of the standard deviations of the body gyro in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
         Avg-tBodyGyro-std()-X   
         Avg-tBodyGyro-std()-Y   
         Avg-tBodyGyro-std()-Z   

#### tBodyGyroJerk-mean
    The mean of the mean of the body gyro jerk in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-tBodyGyroJerk-mean()-X   
            Avg-tBodyGyroJerk-mean()-Y   
            Avg-tBodyGyroJerk-mean()-Z   

#### tBodyGyroJerk-std
    The mean of the standard deviations of the body gyro jerk in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-tBodyGyroJerk-std()-X   
            Avg-tBodyGyroJerk-std()-Y   
            Avg-tBodyGyroJerk-std()-Z   

#####*The magnitudes in the Mag columns were calculated using the Euclidean norm on the associated measure columns*
#### tBodyAccMag-mean/std
    The mean of mean and the standard deviations of the body acceleration magnitudes    
        Data Type: numeric   
        Columns in Group:
            Avg-tBodyAccMag-mean()   
            Avg-tBodyAccMag-std()   

#### tGravityAccMag-mean/std
    The mean of the mean and standard deviations of the gravity acceleration magnitudes   
        Data Type: numeric   
        Columns in Group:
            Avg-tGravityAccMag-mean()   
            Avg-tGravityAccMag-std()   

#### tBodyAccJerkMag-mean/std
    The mean of the mean and standard deviations of the body acceleration jerk magnitudes   
        Data Type: numeric   
        Columns in Group:
            Avg-tBodyAccJerkMag-mean()   
            Avg-tBodyAccJerkMag-std()   

#### tBodyGyroMag-mean/std
    The mean of the mean and standard deviations of the body gyro magnitudes  
        Data Type: numeric   
        Columns in Group:
            Avg-tBodyGyroMag-mean()   
            Avg-tBodyGyroMag-std()   

#### tBodyGyroJerkMag-mean/std
    The mean of the mean and standard deviations of the body gyro jerk magnitudes
        Data Type: numeric   
        Columns in Group:
            Avg-tBodyGyroJerkMag-mean()   
            Avg-tBodyGyroJerkMag-std()   

#####*The columns with names beginning with f denote measures where a fast fourier transform was applied*
#### fBodyAcc-mean
    The mean of the mean of the  body acceleration in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyAcc-mean()-X   
            Avg-fBodyAcc-mean()-Y   
            Avg-fBodyAcc-mean()-Z   

#### fBodyAcc-std
    The mean of the standard deviations of the body acceleration in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyAcc-std()-X   
            Avg-fBodyAcc-std()-Y   
            Avg-fBodyAcc-std()-Z   

#### fBodyAccJerk-mean
    The mean of the mean of the body acceleration jerk in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyAccJerk-mean()-X   
            Avg-fBodyAccJerk-mean()-Y   
            Avg-fBodyAccJerk-mean()-Z   

#### fBodyAccJerk-std
    The mean of the standard deviations of the body acceleration jerk in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyAccJerk-std()-X   
            Avg-fBodyAccJerk-std()-Y   
            Avg-fBodyAccJerk-std()-Z   

#### fBodyGyro-mean
    The mean of the mean of the body gyro in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyGyro-mean()-X   
            Avg-fBodyGyro-mean()-Y   
            Avg-fBodyGyro-mean()-Z   

#### fBodyGyro-std
    The mean of the standard deviations of the body gyro in the X, Y and Z directions   
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyGyro-std()-X   
            Avg-fBodyGyro-std()-Y   
            Avg-fBodyGyro-std()-Z   

#####*The magnitudes in the Mag columns were calculated using the Euclidean norm on the associated measure columns*
#### fBodyAccMag-mean/std
    The mean of the mean and standard deviations of the body acceleration magnitudes 
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyAccMag-mean()   
            Avg-fBodyAccMag-std()   

#### fBodyBodyAccJerkMag-mean/std
    The mean of mean and the standard deviations of the body acceleration jerk magnitudes   
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyBodyAccJerkMag-mean()   
            Avg-fBodyBodyAccJerkMag-std()   

#### fBodyBodyGyroMag-mean/std
    The mean of mean and the standard deviations of the body gyro magnitudes
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyBodyGyroMag-mean()   
            Avg-fBodyBodyGyroMag-std()   

#### fBodyBodyGyroJerkMag-mean/std
    The mean of the mean and standard deviations of the body gyro jerk magnitudes
        Data Type: numeric   
        Columns in Group:
            Avg-fBodyBodyGyroJerkMag-mean()   
            Avg-fBodyBodyGyroJerkMag-std()   