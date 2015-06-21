#CodeBook
## Data Set
1. __30__ volunteers subject.
2. __6__ Activities: __(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)__.
3. Use __Accelerometer__ and __Gyroscope__ monitored __3-axial linear acceleration__ and __3-axial angular velocity__ at a constant rate of __50Hz__ with total  __561__ variavbles.
4. Dataset ___X___ represents variables and observation values, Dataset ___Y___ represents activity type, Dataset ___subject___ represents the volunteers.
5. Dataset ___Dataset___ represents the merged __Tidy Data Set__.
6. Dataset ___avg___ represents the average of each variable for each activity and each subject by  ___Avtivity___ and ___Subject___ grouping.


##Variables:
```
[1] "tBodyAcc-mean()-X"          
[2] "tBodyAcc-mean()-Y"          
[3] "tBodyAcc-mean()-Z"          
[4] "tBodyAcc-std()-X"           
[5] "tBodyAcc-std()-Y"           
[6] "tBodyAcc-std()-Z"           
[7] "tGravityAcc-mean()-X"       
[8] "tGravityAcc-mean()-Y"       
[9] "tGravityAcc-mean()-Z"       
[10] "tGravityAcc-std()-X"        
[11] "tGravityAcc-std()-Y"        
[12] "tGravityAcc-std()-Z"        
[13] "tBodyAccJerk-mean()-X"      
[14] "tBodyAccJerk-mean()-Y"      
[15] "tBodyAccJerk-mean()-Z"      
[16] "tBodyAccJerk-std()-X"       
[17] "tBodyAccJerk-std()-Y"       
[18] "tBodyAccJerk-std()-Z"       
[19] "tBodyGyro-mean()-X"         
[20] "tBodyGyro-mean()-Y"         
[21] "tBodyGyro-mean()-Z"         
[22] "tBodyGyro-std()-X"          
[23] "tBodyGyro-std()-Y"          
[24] "tBodyGyro-std()-Z"          
[25] "tBodyGyroJerk-mean()-X"     
[26] "tBodyGyroJerk-mean()-Y"     
[27] "tBodyGyroJerk-mean()-Z"     
[28] "tBodyGyroJerk-std()-X"      
[29] "tBodyGyroJerk-std()-Y"      
[30] "tBodyGyroJerk-std()-Z"      
[31] "tBodyAccMag-mean()"         
[32] "tBodyAccMag-std()"          
[33] "tGravityAccMag-mean()"      
[34] "tGravityAccMag-std()"       
[35] "tBodyAccJerkMag-mean()"     
[36] "tBodyAccJerkMag-std()"      
[37] "tBodyGyroMag-mean()"        
[38] "tBodyGyroMag-std()"         
[39] "tBodyGyroJerkMag-mean()"    
[40] "tBodyGyroJerkMag-std()"     
[41] "fBodyAcc-mean()-X"          
[42] "fBodyAcc-mean()-Y"          
[43] "fBodyAcc-mean()-Z"          
[44] "fBodyAcc-std()-X"           
[45] "fBodyAcc-std()-Y"           
[46] "fBodyAcc-std()-Z"           
[47] "fBodyAccJerk-mean()-X"      
[48] "fBodyAccJerk-mean()-Y"      
[49] "fBodyAccJerk-mean()-Z"      
[50] "fBodyAccJerk-std()-X"       
[51] "fBodyAccJerk-std()-Y"       
[52] "fBodyAccJerk-std()-Z"       
[53] "fBodyGyro-mean()-X"         
[54] "fBodyGyro-mean()-Y"         
[55] "fBodyGyro-mean()-Z"         
[56] "fBodyGyro-std()-X"          
[57] "fBodyGyro-std()-Y"          
[58] "fBodyGyro-std()-Z"          
[59] "fBodyAccMag-mean()"         
[60] "fBodyAccMag-std()"          
[61] "fBodyBodyAccJerkMag-mean()" 
[62] "fBodyBodyAccJerkMag-std()"  
[63] "fBodyBodyGyroMag-mean()"    
[64] "fBodyBodyGyroMag-std()"     
[65] "fBodyBodyGyroJerkMag-mean()"
[66] "fBodyBodyGyroJerkMag-std()" 
[67] "Subject"                    
[68] "Activity"
```
   
## Short Variables

| Variables | Description
------------|----------------
| tBodyAcc-mean() | Mean time for acceleration of body
| tBodyAcc-std() | Standard deviation of time for acceleration of body
| tGravityAcc-mean()| Mean time of acceleration of gravity 
| tGravityAcc-std() | Standard deviation of time of acceleration of gravity
| tBodyAccJerk-mean() | Mean time of body acceleration jerk
| tBodyAccJerk-std() | Standard deviation of time of body acceleration jerk
| tBodyGyro-mean() | Mean body gyroscope measurement 
| tBodyGyro-std() | Standard deviation of body gyroscope measurement
| tBodyGyroJerk-mean() | Mean jerk signal of body
| tBodyGyroJerk-std() | Standard deviation of jerk signal of body
| tBodyAccMag-mean() |  Mean magnitude of body Acc       
| tBodyAccMag-std()} | Standard deviation of magnitude of body Acc        
| tGravityAccMag-mean() |  Mean gravity acceleration magnitude    
| tGravityAccMag-std() | Standard deviation of gravity acceleration magnitude      
| tBodyAccJerkMag-mean() |  Mean magnitude of body acceleration jerk   
| tBodyAccJerkMag-std() | Standard deviation of magnitude of body acceleration jerk     
| tBodyGyroMag-mean() | Mean magnitude of body gyroscope measurement       
| tBodyGyroMag-std() |  Standard deviation of magnitude of body gyroscope measurement       
| tBodyGyroJerkMag-mean() | Mean magnitude of body body gyroscope jerk measurement   
| tBodyGyroJerkMag-std() | Standard deviation of magnitude of body body gyroscope jerk measurement    
| fBodyAcc-mean() |  Mean frequency of body acceleration        
| fBodyAcc-std() | Standard deviation of frequency of body acceleration          
| fBodyAccJerk-mean() | Mean frequency of body accerlation jerk    
| fBodyAccJerk-std() | Standard deviation frequency of body accerlation jerk      
| fBodyGyro-mean() | Mean frequency of body gyroscope measurement       
| fBodyGyro-std() | Standard deviation frequency of body gyroscope measurement         
| fBodyAccMag-mean() |  Mean frequency of body acceleration magnitude       
| fBodyAccMag-std() | Standard deviation of frequency of body acceleration magnitude         
| fBodyBodyAccJerkMag-mean() | Mean frequency of body acceleration jerk magnitude
| fBodyBodyAccJerkMag-std() | tandard deviation of frequency of body acceleration jerk magnitude 
| fBodyBodyGyroMag-mean() | Mean frequency of magnitude of body gyroscope measurement   
| fBodyBodyGyroMag-std() | Standard deviation of frequency of magnitude of body gyroscope measurement    
| fBodyBodyGyroJerkMag-mean() | Mean frequency of magnitude of body gyroscope jerk measurement
| fBodyBodyGyroJerkMag-std() | Standard deviation frequency of magnitude of body gyroscope jerk measurement
| Subject |   Subject ID (volunteer ID)                 
| Activity | The Activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING)

## Data Source
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones