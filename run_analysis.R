# Course project for Coursera John Hopkins "Getting and Cleaning Data".

library(reshape2)

# setwd() to the "UCI HAR Dataset" directory where the Samsung data is unpacked.

# load the feature names and activity names data
# features has duplicate values which causes read.table() to create a factor by default 
features <- read.table("features.txt", stringsAsFactors=FALSE) # 561,2
activities <- read.table("activity_labels.txt") # 6,2

# load the test data
X_test <- read.table("./test/X_test.txt") # 2947,561
Y_test <- read.table("./test/Y_test.txt") # 2947,1
subjects_test <- read.table("./test/subject_test.txt") # 2947,1

# combine subject, activity and features data in to one tidy wide data frame  
wide_test <- cbind(subjects_test, Y_test, X_test) # 2947,563

# same treatment for the train data
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")
subjects_train <- read.table("./train/subject_train.txt")
wide_train <- cbind(subjects_train, Y_train, X_train) # 7352,563

# Merge the training and the test sets to create one data set.
wide <- rbind(wide_train, wide_test) # 10299,563

# Set appropriate labels for the data set with descriptive variable names.
names(wide) <- c("subject", "activity", features$V2)

# Extract only the measurements on the mean and standard deviation for each measurement.
# other features have "std" or "mean" in their names but the first 6 are the obvious ones
meanstd <- wide[,1:8]

# Use descriptive activity names to name the activities in the data set
# this appends an "activity_name" column.
meanstd = merge(meanstd, activities, by.x="activity", by.y="V1", all=TRUE)
names(meanstd)[9] = "activity_name"

# Create a tidy data set with the average of each variable for each activity and each subject.
# melt meanstd in to a narrow data frame with one (mean or std) observation per row
meanstdMelt <- melt(meanstd, id=c("activity_name", "subject"), measure.vars=names(meanstd)[3:8])

# aggregate the feature averages for each subject and activity
tidy <- dcast(meanstdMelt, activity_name + subject ~ variable, mean)

# save the resulting tidy data set
write.table(tidy, file="tidy.txt")
