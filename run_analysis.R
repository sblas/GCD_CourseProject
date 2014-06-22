##----------------------------------------------------------------------------
##----------------------------------------------------------------------------
##
##  File name:  run_analysis.R
##  Date:       17Jun2014
##
##  This script does the following:
##  1.  Merges the training and the test sets to create one data set.
##  2.  Extracts only the measurements on the mean and standard deviation 
##      for each measurement
##  3.  Uses descriptive activity names to name the activities in the data set.
##  4.  Appropriately labels the data set with descriptive variable names.
##  5.  Creates a second, independent tidy data set with the average of each
##      variable for each activity and each subject.
##
##----------------------------------------------------------------------------
##----------------------------------------------------------------------------

##----------------------------------------------------------------------------
## Read tables for test and train data
#       Unzip the data into a folder called "UCI HAR Dataset" within the working directory
#       The "UCI HAR Dataset" folder will then have a "test" and "train" subfolder
#       The X.test, y.test, and subject.test datasets are located in the "test" folder
#       The X.train, y.train, and subject.train datasets are located in the "train" folder
##----------------------------------------------------------------------------

# X.test.data contains the test set of data
        X.test.data <- read.table("./UCI HAR Dataset/test/X_test.txt", comment.char = "", colClasses="numeric")

# y.test.data contains the test labels for the data
        y.test.data <- read.table("./UCI HAR Dataset/test/y_test.txt", comment.char = "", colClasses="numeric")

# subject.test.data contains the subject identifier for the test data 
        subject.test.data <- read.table("./UCI HAR Dataset/test/subject_test.txt", comment.char = "", colClasses="numeric")

# X.train.data contains the train set of data
        X.train.data <- read.table("./UCI HAR Dataset/train/X_train.txt", comment.char = "", colClasses="numeric")

# y.train.data contains the trai labels for the data
        y.train.data <- read.table("./UCI HAR Dataset/train/y_train.txt", comment.char = "", colClasses="numeric")

# subject.train.data contains the subject identifier for the the train data
        subject.train.data <- read.table("./UCI HAR Dataset/train/subject_train.txt", comment.char = "", colClasses="numeric")

##----------------------------------------------------------------------------
##  1.  Merges the training and the test sets to create one data set.
##----------------------------------------------------------------------------

# combine X.test.data, y.test.data, and subject.test.data into a test.data data frame
        test.data <- cbind(X.test.data,subject.test.data,y.test.data)

# combine X.train.data, y.train.data, and subject.train.data into a train.data data frame
        train.data <- cbind(X.train.data,subject.train.data,y.train.data)

# merge test.data and train.data to create one data set called merge.data
        merge.data <- rbind(test.data,train.data)

##----------------------------------------------------------------------------
##  2.  Extracts only the measurements on the mean and standard deviation 
##      for each measurement
##----------------------------------------------------------------------------

# read in features.txt  This file contains the column names for all the features
        feature.names <- read.table("./UCI HAR Dataset/features.txt", sep=" ", comment.char = "", colClasses="character")

# using the feature.names list, determine which names contain "mean"
        mean.location <- which(grepl("mean(",feature.names$V2,fixed=TRUE))

# using the feature.names list, determine which names contain "std"
        std.location <- which(grepl("std",feature.names$V2))

# combine names which contain "mean" (mean.location) and names that contain "std"
#   (std.location) into a single vector called feature.location and add the last
#   two columns for subject and activity to vector
        feature.location <- c(mean.location,std.location,562,563)

# extract the columns from merge.data based on the location indicated in
#   feature.location vector.  The new data frame meanstd.data will contain
#   only the measurements on the mean and standard deviation for each measurement
        meanstd.data <- merge.data[,feature.location]

##----------------------------------------------------------------------------
##  3.  Uses descriptive activity names to name the activities in the data set.
##----------------------------------------------------------------------------

# substitute "walking" for all 1's in column V1.2 of meanstd.data
        activity <- gsub(1,"walking",meanstd.data[,"V1.2"])

# substitute "walking upstairs" for all 2's in activity vector
        activity <- gsub(2,"walking upstairs",activity)

# substitute "walking downstairs" for all 3's in activity vector
        activity <- gsub(3,"walking downstairs", activity)

# substitute "sitting" for all 4's in activity vector
        activity <- gsub(4,"sitting",activity)

# substitute "standing" for all 5's in activity vector
        activity <- gsub(5,"standing",activity)

# substitute "laying" for all 6's in activity vector
        activity <- gsub(6,"laying",activity)

#  Add activity as a new column to meanstd.data
        meanstd.data$activity <- activity

# Remove V1.2 as a column from meanstd.data
        meanstd.data$V1.2 <- NULL

##----------------------------------------------------------------------------
##  4.  Appropriately labels the data set with descriptive variable names.
##----------------------------------------------------------------------------

# create a column name list, colum.names, based on the feature.names from step 2
        colum.names <- feature.names[feature.location,"V2"]

# add the labels subject and activity to the colum.names list
        colum.names[67:68] <- c("subject","activity")

# substitute the column name prefixes of tBody, fBody, and tGravity
        colum.names <- gsub("tBody","time_body_",colum.names,fixed=TRUE)
        colum.names <- gsub("fBody","frequency_body_",colum.names,fixed=TRUE)
        colum.names <- gsub("tGravity","time_gravity_",colum.names,fixed=TRUE)

# substitute the column name descriptors of Acc, Gyro, Jerk, Mag, and Body
        colum.names <- gsub("Acc","acceleration_",colum.names,fixed=TRUE)
        colum.names <- gsub("Gyro","gyroscopic_",colum.names,fixed=TRUE)
        colum.names <- gsub("Jerk","jerk_",colum.names,fixed=TRUE)
        colum.names <- gsub("Mag","magnitude_",colum.names,fixed=TRUE)
        colum.names <- gsub("Body","body_",colum.names,fixed=TRUE)

# substitute the column name descriptors of mean() and std()
        colum.names <- gsub("-mean()","mean_",colum.names,fixed=TRUE)
        colum.names <- gsub("-std()","standarddeviation_",colum.names,fixed=TRUE)
      
# substitute the column name prefixes of X, Y, and Z
        colum.names <- gsub("-X","x",colum.names,fixed=TRUE)
        colum.names <- gsub("-Y","y",colum.names,fixed=TRUE)
        colum.names <- gsub("-Z","z",colum.names,fixed=TRUE)

# name columns in meanstd.data with the names from colum.names
        colnames(meanstd.data) <- colum.names

##----------------------------------------------------------------------------
##  5.  Creates a second, independent tidy data set with the average of each
##      variable for each activity and each subject.
##----------------------------------------------------------------------------

# load reshape2 library
        library(reshape2)

# convert meanstd.data into a molten data frame
        datamelt <- melt(meanstd.data,id=c("subject","activity"),measure.vars=colum.names[1:66])        

# create tidy data set with the average of each variable for each activity and 
#    each subject
        tidy.data <- dcast(datamelt,activity + subject ~ variable,mean)

# write tidy data set to a .txt file in working directory folder "UCI HAR Dataset"
        write.table(tidy.data,file="./UCI HAR Dataset/tidydata.txt", sep = ",",col.names=colnames(tidy.data))
