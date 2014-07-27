### Description.

This is the course project for John Hopkins Coursera course Getting and Cleaning Data.  It produces a tidy dataset from the UCI HAR Dataset.

### Files.

README.md - this file.

run_analysis.R - R source code.  

CodeBook.md - data dictionary for the dataset which run_analysis.R produces: tidy.

tidy.txt - resulting clean dataset.

### Dependencies.

UCI HAR Dataset.  This can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

### Running the code.

run_analysis.R may be run using the R programming language.  Set the working directory to the "UCI HAR Dataset" directory where the original data is unpacked (see dependencies).  run_analysis.R writes a single file, tidy.txt, to the working directory.  This is an R data frame which may be loaded in to R using the command read.table("tidy.txt").

### Notes.

Tidy.txt contains a single data frame with each column representing one variable.  There are no missing values and descriptive names have been used wherever possible.  Thus it is a tidy dataset.  This is discussed in the course forums e.g. https://class.coursera.org/getdata-005/forum/thread?thread_id=23.

The descriptive names for the mean and standard deviation variables were applied from the features.txt file of the UCI HAR Dataset.  This maintains the link to the explanation given in the features_info.txt file.
