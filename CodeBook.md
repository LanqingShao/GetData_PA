CodeBook for run_analysis.R
=========================

run_analysis.R
-------------------------

1. It loads reshape2-library (should be installed previously)
2. Then it will load all filtered features and all activites. 
3. Merge results of previous function with "train" and "test" arguments to get full dataset
7. The next step creates another dataframe that contains the mean of all columns by "subjectID" and "Acivity". This is reshape2 is used for.
8. Writes final tidy data to file "tidydata.csv"

tidydata.txt
-------------------------

Resulting data contains rhis cols:

1. subjectID: subject ID.
2. acitvity: type of acitivity
  *WALKING 
  *WALKING_UPSTAIRS 
  *WALKING_DOWNSTAIRS 
  *SITTING 
  *STANDING 
  *LAYING
3. feature: feaures: "tBodyAcc.mean...X", "tBodyAcc.mean...Y", "tBodyAcc.mean...Z", "tGravityAcc.mean...X", "tGravityAcc.mean...Y", "tGravityAcc.mean...Z", "tBodyAccJerk.mean...X", "tBodyAccJerk.mean...Y", "tBodyAccJerk.mean...Z", "tBodyGyro.mean...X", "tBodyGyro.mean...Y", "tBodyGyro.mean...Z", "tBodyGyroJerk.mean...X", "tBodyGyroJerk.mean...Y", "tBodyGyroJerk.mean...Z", "tBodyAccMag.mean..", "tGravityAccMag.mean..", "tBodyAccJerkMag.mean..", "tBodyGyroMag.mean..", "tBodyGyroJerkMag.mean..", "fBodyAcc.mean...X", "fBodyAcc.mean...Y", "fBodyAcc.mean...Z", "fBodyAcc.meanFreq...X", "fBodyAcc.meanFreq...Y", "fBodyAcc.meanFreq...Z", "fBodyAccJerk.mean...X", "fBodyAccJerk.mean...Y", "fBodyAccJerk.mean...Z", "fBodyAccJerk.meanFreq...X", "fBodyAccJerk.meanFreq...Y", "fBodyAccJerk.meanFreq...Z", "fBodyGyro.mean...X", "fBodyGyro.mean...Y", "fBodyGyro.mean...Z", "fBodyGyro.meanFreq...X", "fBodyGyro.meanFreq...Y", "fBodyGyro.meanFreq...Z", "fBodyAccMag.mean..", "fBodyAccMag.meanFreq..", "fBodyBodyAccJerkMag.mean..", "fBodyBodyAccJerkMag.meanFreq..","fBodyBodyGyroMag.mean..", "fBodyBodyGyroMag.meanFreq..", "fBodyBodyGyroJerkMag.mean..", "fBodyBodyGyroJerkMag.meanFreq..", "angle.tBodyAccMean.gravity.", "angle.tBodyAccJerkMean..gravityMean.", "angle.tBodyGyroMean.gravityMean.", "angle.tBodyGyroJerkMean.gravityMean.", "angle.X.gravityMean.", "angle.Y.gravityMean.", "angle.Z.gravityMean.", "tBodyAcc.std...X", "tBodyAcc.std...Y", "tBodyAcc.std...Z", "tGravityAcc.std...X", "tGravityAcc.std...Y", "tGravityAcc.std...Z", "tBodyAccJerk.std...X", "tBodyAccJerk.std...Y", "tBodyAccJerk.std...Z", "tBodyGyro.std...X", "tBodyGyro.std...Y", "tBodyGyro.std...Z", "tBodyGyroJerk.std...X", "tBodyGyroJerk.std...Y", "tBodyGyroJerk.std...Z", "tBodyAccMag.std..", "tGravityAccMag.std..", "tBodyAccJerkMag.std..", "tBodyGyroMag.std..", "tBodyGyroJerkMag.std..", "fBodyAcc.std...X", "fBodyAcc.std...Y", "fBodyAcc.std...Z", "fBodyAccJerk.std...X", "fBodyAccJerk.std...Y", "fBodyAccJerk.std...Z", "fBodyGyro.std...X", "fBodyGyro.std...Y", "fBodyGyro.std...Z", "fBodyAccMag.std..", "fBodyBodyAccJerkMag.std..", "fBodyBodyGyroMag.std..", "fBodyBodyGyroJerkMag.std..".