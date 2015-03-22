The following variables are contained in the output file 'feats_act_subs.txt'.

"activity"  
Concatenated list of labels from training and test datasets:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

"subs"
Concatenated list of labels for subjects in training and test datasets:

Arbitrary labels 1:30

The rest of the variables correspond to mean measurements for each subject performing each activity. 
Only the measurements corresponding to mean and standard deviations from the original experiment are included. 
Variable names are taken directly from the source file, 'features.txt', which is downloaded as part of 'run_analysis.R'.
Included variable names are copied below for convenience. For a more detailed explanation see 'features_info.txt', which 
is also downloaded as part of 'run_analysis.R'.

 [3] "tBodyAcc-mean()-X"              
 [4] "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"           
 [7] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"            "tBodyAccJerk-mean()-X"          
[10] "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"             
[13] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"              "tBodyGyroJerk-mean()-X"         
[16] "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"             
[19] "tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"          "tBodyGyroMag-mean()"            
[22] "tBodyGyroJerkMag-mean()"         "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[25] "fBodyAcc-mean()-Z"               "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
[28] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[31] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"      
[34] "fBodyAccJerk-meanFreq()-Z"       "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[37] "fBodyGyro-mean()-Z"              "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[40] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"         
[43] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[46] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()"
[49] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
[52] "tGravityAcc-std()-X"             "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[55] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[58] "tBodyGyro-std()-X"               "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[61] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[64] "tBodyAccMag-std()"               "tGravityAccMag-std()"            "tBodyAccJerkMag-std()"          
[67] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-std()"          "fBodyAcc-std()-X"               
[70] "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"           
[73] "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"            "fBodyGyro-std()-X"              
[76] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"               "fBodyAccMag-std()"              
[79] "fBodyBodyAccJerkMag-std()"       "fBodyBodyGyroMag-std()"          "fBodyBodyGyroJerkMag-std()"  

