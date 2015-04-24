# Dataset overview
This dataset provides summaries of measurements made by a study of wearable computing. Specifically, the study attempted to find ways to recognize human activity based on data from the accelerometers of a Samsung Galaxy S smartphone worn by test subjects as they performed various activities. Complete information about the study can be found [at this site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Details
The study involved each study subject's performing each of six types of activities multiple times. As described on the site above, raw data from the smartphone was used to estimate the means and standard deviations of various movement vectors for each activity instance. The six activity types are
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

The dataset contains one row for each type of activity performed by each study subject, as well as averages of the estimated movement vector means and standard deviations.

## Columns
1. subject - Integer that identifies a subject in the study
1. role - Takes the value "train" or "test" to indicate the subject's role in the study (source of training or test data, respectively)
1. activity - identifies the type of activity

The remaining columns are averages of the study's estimated means and standard deviations. See the site above for detail on these movement vectors and how they were measured. These column names are (almost) the same as the corresponding column names in test/X_test.txt and train/X_train.txt whose values were averaged to create this dataset. Strictly speaking, columns in the original data files are not name in the files; instead they are listed in the file features.txt. The only difference between this dataset's column names and the corresponding names from features.txt is that parentheses. For example, tBodyAcc.mean.X in this dataset corresponds to tBodyAcc.mean().X in features.txt.

1. tBodyAcc.mean.X              
1. tBodyAcc.mean.Y              
1. tBodyAcc.mean.Z              
1. tBodyAcc.std.X               
1. tBodyAcc.std.Y               
1. tBodyAcc.std.Z               
1. tGravityAcc.mean.X           
1. tGravityAcc.mean.Y           
1. tGravityAcc.mean.Z           
1. tGravityAcc.std.X            
1. tGravityAcc.std.Y            
1. tGravityAcc.std.Z            
1. tBodyAccJerk.mean.X          
1. tBodyAccJerk.mean.Y          
1. tBodyAccJerk.mean.Z          
1. tBodyAccJerk.std.X           
1. tBodyAccJerk.std.Y           
1. tBodyAccJerk.std.Z           
1. tBodyGyro.mean.X             
1. tBodyGyro.mean.Y             
1. tBodyGyro.mean.Z             
1. tBodyGyro.std.X              
1. tBodyGyro.std.Y              
1. tBodyGyro.std.Z              
1. tBodyGyroJerk.mean.X         
1. tBodyGyroJerk.mean.Y         
1. tBodyGyroJerk.mean.Z         
1. tBodyGyroJerk.std.X          
1. tBodyGyroJerk.std.Y          
1. tBodyGyroJerk.std.Z          
1. tBodyAccMag.mean             
1. tBodyAccMag.std              
1. tGravityAccMag.mean          
1. tGravityAccMag.std           
1. tBodyAccJerkMag.mean         
1. tBodyAccJerkMag.std          
1. tBodyGyroMag.mean            
1. tBodyGyroMag.std             
1. tBodyGyroJerkMag.mean        
1. tBodyGyroJerkMag.std         
1. fBodyAcc.mean.X              
1. fBodyAcc.mean.Y              
1. fBodyAcc.mean.Z              
1. fBodyAcc.std.X               
1. fBodyAcc.std.Y               
1. fBodyAcc.std.Z               
1. fBodyAcc.meanFreq.X          
1. fBodyAcc.meanFreq.Y          
1. fBodyAcc.meanFreq.Z          
1. fBodyAccJerk.mean.X          
1. fBodyAccJerk.mean.Y          
1. fBodyAccJerk.mean.Z          
1. fBodyAccJerk.std.X           
1. fBodyAccJerk.std.Y           
1. fBodyAccJerk.std.Z           
1. fBodyAccJerk.meanFreq.X      
1. fBodyAccJerk.meanFreq.Y      
1. fBodyAccJerk.meanFreq.Z      
1. fBodyGyro.mean.X             
1. fBodyGyro.mean.Y             
1. fBodyGyro.mean.Z             
1. fBodyGyro.std.X              
1. fBodyGyro.std.Y              
1. fBodyGyro.std.Z              
1. fBodyGyro.meanFreq.X         
1. fBodyGyro.meanFreq.Y         
1. fBodyGyro.meanFreq.Z         
1. fBodyAccMag.mean             
1. fBodyAccMag.std              
1. fBodyAccMag.meanFreq         
1. fBodyBodyAccJerkMag.mean     
1. fBodyBodyAccJerkMag.std      
1. fBodyBodyAccJerkMag.meanFreq 
1. fBodyBodyGyroMag.mean        
1. fBodyBodyGyroMag.std         
1. fBodyBodyGyroMag.meanFreq    
1. fBodyBodyGyroJerkMag.mean    
1. fBodyBodyGyroJerkMag.std     
1. fBodyBodyGyroJerkMag.meanFreq
