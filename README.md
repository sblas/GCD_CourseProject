Getting and Cleaing Data Course Project README
========================



Purpose
-------

This is the README file for the "Getting and Cleaning Data" course project.

This file explains how run_analysis.R creates a tidy dataset called tidydata.txt.


Raw Data
--------

The raw data for this course project can be found using this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).


To use the raw data:
* Save the .zip file to your computer.
* Unzip the contents of the file into a new folder in your working directory named `UCI HAR Dataset`.


Code
----

The code to prepare a tidy data set that can be used for later analysis is included in this repo.  The name of the code is `run_analysis.R`.


To run the code:
* Save `run_analysis.R` to your working directory.
* Run the code using:
```
source("./run_analysis.R")
```


Tidy Data
---------

The tidy data set created by `run_analysis.R` will be located in the `UCI HAR Dataset` folder.

To open the tidy data set in R use:
```
tidy.data <- read.table("./UCI HAR Dataset/tidydata.txt", sep=",",header=TRUE)
```


Tidy Data Notes
---------------

`tidydata.txt` is a wide tidy data set based on the following:

1. Each variable forms a column
  * There are 68 columns in the data set. There is a subject identifier column.  There is a activity identifier column.  And there are 66 meaurement columns.  
  * Each variable is defined in the CodeBook.md file contained in this repo.
2. Each observation forms a row
  * There are 180 rows in the data set
3. Each type of observational unit forms a table
  * There is one table to represent the accelerometer data from Samsung Galazy S smartphones.

Tidy data requirements are based on:

* Week 3 reshaping data lecture
* Hadley Wickham Tidy Data paper mentioned in Week 1 (http://vita.had.co.nz/papers/tidy-data.pdf)

Steps to Tidy Data Set
---------------------

There are detailed notes in the `run_analysis.R` code which describe each line of the code to get from raw data to the tidy data set.

`run_analysis.R` does the following:

1. Reads in the tables for the test and training datasets
  * tables read include:
    * X_test.txt
    * y_test.txt
    * subject_test.txt
    * X_train.txt
    * y_train.txt
    * subject_train.txt
2. Merges the training and test datasets to create one data set
3. Extracts only the measurements on the mean and standard deviation for each measurement
  * measurements extracted based on the naming in features.txt
  * names that included the following were included:
    * "mean("
    * "std("
4. Substitutes descriptive activity names for the activity numbers
  * descriptive activity names include:
    * laying
    * sitting
    * standing
    * walking
    * walking downstairs
    * walking upstairs
5. Renames dataset columns with descriptive names
  * see CodeBook.md for descriptions of variable names
6. Creates the tidy data set with the average of each variable for each activity and each subject.
  * the resulting tidy data set is a wide data set
  * see tidy data notes above for tidy data explaination
7. Writes the tidy data set to a .txt file
  * `tidydata.txt`

