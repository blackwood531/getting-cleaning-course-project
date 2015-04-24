# Getting and Cleaning Data: course project

This readme provides information about the run_analysis.R script for this project.

## Preconditions and assumptions
1. The UCI HAR zip file must have already been downloaded and extracted into the script's working directory.
1. The reshape2 and dplyr packages must have been installed.
1. The script protects itself against NAs when computing averages, but it does no error checking.

## How the script works
1. Read the test and training data
 1. First, the script reads features.txt to get all the feature names
 1. Then it uses the grep function to discover the ones we want (with "mean" or "std" in the name). These are called "keepers".
 1. Next it reads the training and test data files into data frames called "train" and "test"
 1. Then it narrows train and test down to just the keeper columns
 1. This phase concludes by setting the column names in train and test to the keeper names
1. Add columns for the subjects, roles and activities, and combine the data for training and test subjects into one data frame
 1. First, the script reads the training and testing subject data (these are single-column files, parallel to the main data files)
 1. Next it gets the mapping from activity numbers to activity names (oddly, the activities are a factor, but R has to be told not to read their names as a factor because it will assign different codes)
 1. Then it reads the activity code vectors (again, separare, single-column files, parallel to the main data file) and creates activity factors with the appropriate numeric codes (of course, as an R rookie, I can't say whether there's a better way to do this - probably)
 1. Next, the script adds subject, activity and role columns on the left sides of the train and test data frames
 1. This phase concludes by using rbind to paste the two data frames together, and removing excess periods (.) from column names. These periods were parentheses in the features.txt file, but apparently the parentheses are converted to periods when the strings are used as column names. When this step is complete, ucihar1 is the first tidy data frame that the project specification calls for.
1. The third phase makes the second tidy data set
 1. The script melts the first data frame into another one (to avoid typing 79 variable names later)
 1. Next, it groups the melted data frame by subject, role and activity, plus the "variable" column created by melt
 1. Next, it uses summarize to calculate the means
 1. "cast" turns out the be the opposite of "melt" - the script uses case to convert the means data frame into a wide format
 1. Finally, the script write outs the tidy data set

## Notes
* I'm a bit uncertain about this dataset - averaging standard deviations doesn't usually make sense, right? But maybe the original estimates qualify as observations that can be subjected to simple summaries. Then again, this assignment is about tidying data, so maybe I'm worrying too much much about such details ... knowing that I may be missing something, full speed ahead ...

