## DATA DICTIONARY - tidy.txt

tidy.txt contains a clean dataset created from the UCI HAR Dataset downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  It is the result of the course project for John Hopkins Coursera course Getting and Cleaning Data.

This dataset was made by combining the train and test data from the UCI HAR Dataset.  For full details see README.md and run_analysis.R.

### Variables.

activity_name 
    Descriptive activity names from acivity_labels.txt in the UCI HAR Dataset.
    "WALKING"
    "WALKING_UPSTAIRS"
    "WALKING_DOWNSTAIRS"
    "SITTING"
    "STANDING"
    "LAYING"

subject
    Identifier of the 30 subjects who performed the experiment. Values 1 to 30.

The remaining six data columns below are the corresponding feature from the UCI HAR Dataset averaged for each activity_name and subject pair.

tBodyAcc-mean()-X 

tBodyAcc-mean()-Y 

tBodyAcc-mean()-Z 

tBodyAcc-std()-X 

tBodyAcc-std()-Y 

tBodyAcc-std()-Z