## this script works if it's run in a directory where the
## Samsung zip file has been extracted

## it also assumes that the reshape2 and dplyr packages have been installed
library(reshape2)
library(dplyr)

## get the features
features <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

## we'll keep only the features with mean or std in their names
keepers <- grep("mean|std",features[,2])

## read the 
train <- read.table("UCI HAR Dataset/train/X_train.txt",colClasses=c("numeric"))
test <- read.table("UCI HAR Dataset/test/X_test.txt",colClasses=c("numeric"))

## get rid of the excess columns
train <- train[,keepers]
test <- test[,keepers]

## set the column names to something more descriptive than V27
colnames(train) <- features[keepers,2]
colnames(test) <- features[keepers,2]

## read the information about which subjects did which tests
trainsubj <- read.table("UCI HAR Dataset/train/subject_train.txt")
testsubj <- read.table("UCI HAR Dataset/test/subject_test.txt")

## read the mapping from activity numbers to labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)

## read the activity codes for the test set and attach the labels
testy <- read.table("UCI HAR Dataset/test/y_test.txt")
factesty <- factor(testy[,1], labels=activities$V2)

## read the activity codes for the training set and attach the labels
trainy <- read.table("UCI HAR Dataset/train/y_train.txt")
factrainy <- factor(trainy[,1], labels=activities$V2)

## add columns for activity, subject and role (test or train)
train <- data.frame(subject=trainsubj[,1],activity=factrainy,role="train",train)
test <- data.frame(subject=testsubj[,1],activity=factesty,role="test",test)

## paste the two frames together
ucihar1 <-rbind(test,train)

## it's a nit, but should make the data a little easier to work with
## without this, the measurement column names look like tBodyAcc.mean...X
colnames(ucihar1) <- gsub("\\.\\.","",colnames(ucihar1))

## I don't really understand this data - averaging standard deviations
## doesn't usually make sense, right? But maybe these estimates qualify
## as observations that can be subjected to standard simple summaries
## then again, this assignment is about tidying data, so maybe I'm worrying
## too much much about such details ... knowing that I may be missing something
## about the problem statement, full speed ahead ...

## Next step is to make the second tidy data set, using melt to avoid
## typing 80 variable names
melted <- melt(ucihar1,c("subject","role","activity"))

## next, group the melted data frame by subject, role and activity,
## plus the "variable" column created by the melt
melted_grouped <- group_by(melted,subject,role,activity,variable)

## now use summarize to calculate the means
means <- summarize(melted_grouped,av=mean(value,rm.na=TRUE))

## "cast" turns out the be the opposite of "melt" - put it back into a wide format
tidy <- dcast(means,subject+role+activity~variable,value.var="av")

## finally, write out the tidy data set
write.table(tidy,"tidy.txt",row.name=FALSE)
