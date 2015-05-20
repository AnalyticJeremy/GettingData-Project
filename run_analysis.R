#
# run_analysis.R
#
# This script converts the raw data from the "UCI HAR Dataset" to a tidy
# dataset that is fit for further analysis.  For an overview of this script
# (and the project as a whole), please consult the "README.md" file in the
# repository.
#
# To run this script, you must first...
#    1.  Make sure that the "dplyr" package is installed in your R environment
#        (This script was written using dplyr v0.4.1, but any recent version
#         should work.)
#    2.  You MUST set your working directory to the directory in which the
#        data resides.  If you've unzipped the data using standard parameters,
#        you would need to be inside the "UCI HAR Dataset" directory.
#        If you need to download the data, you can obtain it from:
#           https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#


# This script uses functions from the "dplyr" package.  If it has not yet been
# loaded into the current session, this will take care of it.
require(dplyr)

#
# STEP 1: Merges the training and the test sets to create one data set.
#
# The data is divided into two different sets:  "train" and "test".  Within
# each set, the data is further divided into three categories (with each
# category stored in a separate file).  The three categories are:
#    - features:  the actual readings from the accelerometers
#    - activity:  an ID that tells what activity the subject was performing
#                 when the corresponding reading was captured
#    - subject:   the ID of the subject from whom the corresponding reading was
#                 captured
#
# The first step is to take these six files and combine them into one data.frame
#
# We start by reading the six files into their own data.frames.

train_features_df <- read.table("train/X_train.txt", stringsAsFactors = FALSE)
test_features_df  <- read.table("test/X_test.txt", stringsAsFactors = FALSE)

train_activity_df <- read.table("train/y_train.txt", stringsAsFactors = FALSE)
test_activity_df  <- read.table("test/y_test.txt", stringsAsFactors = FALSE)

train_subject_df <- read.table("train/subject_train.txt", stringsAsFactors = FALSE)
test_subject_df  <- read.table("test/subject_test.txt", stringsAsFactors = FALSE)

# For each category, combine the data from the two data sets into one data frame
features_df <- rbind(train_features_df, test_features_df)
activity_df <- rbind(train_activity_df, test_activity_df)
subject_df <- rbind(train_subject_df, test_subject_df)

# As we go along, we should delete the data.frames we won't need any more to
# free up memory.  Since we've already combined the individual data.frames,
# we can remove the original data.frames from memory.
rm(train_features_df)
rm(test_features_df)
rm(train_activity_df)
rm(test_activity_df)
rm(train_subject_df)
rm(test_subject_df)

# Combine the three category data.frames into one.
# (Note that the "features" data is first.  The order of the columns will be
#  important later in the script.)
df <- cbind(features_df, subject_df, activity_df)

# Get rid of the three individual data.frames to free up memory
rm(subject_df)
rm(activity_df)
rm(features_df)

#
# STEP 2:  Extracts only the measurements on the mean and standard deviation
#          for each measurement.
#
# We are not interested in all of the measurements, only the ones that were
# derived using the "mean()" or "std()" functions.  We can get rid of all of
# the other columns.
#
# First, we need to know which measures are which.  The names of the measures
# were included with the data in a file called "features.txt".  The file has
# two columns: an index and the name of the measure.  We only care about the
# name.  So we will read it into a vector.  These will eventually become
# our column names.
column_names <- read.table("features.txt", stringsAsFactors = FALSE)$V2

# When we combined the data.frames, we added two additional columns to the
# final data.frame.  We'll need names for those columns, too, so add them
# to the vector of names we just created.
column_names <- append(column_names, c("subject_id", "activity_id"))

# We can get the indices of the columns we want to keep by searching the
# measurement names for labels that contain "mean(" or "std(".
columns_to_keep <- which(grepl("(mean\\(|std\\()", column_names))

# We also want to keep the last two columns... so add the indices of those
# last two columns that we added
columns_to_keep <- append(columns_to_keep, (length(column_names) - 1):length(column_names))

# Rewrite our data.frame, but only keep the columns whose index in listed in
# our "columns_to_keep" vector.  We also want to keep the same set of
# feature_labels... so apply a similar operation to that vector as well.
# Then we'll be done with "columns_to_keep"... so remove it from memory.
df <- df[, columns_to_keep]
column_names <- column_names[columns_to_keep]
rm(columns_to_keep)

#
# STEP 3:  Uses descriptive activity names to name the activities in the data set
#
# Right now, each observation in the data.frame contains the numeric ID of the
# activity that was being performed when the data was collected.  However, in
# keeping with the principles of tidy data, it would be better to have a text
# description of the activity as well.

# Read in the text descriptions of the activities that was included with the
# data set.  Once again, this file has two columns:  the first column has the
# activity ID and the second column has the name of the activity.  We only want
# the second column.
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)$V2

# For each observation in the data.frame, use the activity ID as the index of
# the "activity_labels" vector to find the corresponding label.  Add that label
# as a new column in the data.frame called "activity_label".
df$activity_label <- activity_labels[df$V1.2]

# Since we added a new column to the data.frame, we also need to add a new item
# to our vector of column names.
column_names <- append(column_names, "activity_label")

# Don't need "activity_labels" vector any more... so erase it from memory.
rm(activity_labels)

#
# STEP 4:  Appropriately labels the data set with descriptive variable names.
#
# Use our vector of column names to rename the columns in the data.frame.
# Then get rid of the "column_names" vector because we won't need it any more.
names(df) <- column_names
rm(column_names)


#
# This step isn't required by the assignment, but I wanted my subject and
# activity information at the front of the data.frame instead of the end.  So
# the following statements will reorder the columns.
# Also go ahead and remove the "activity_id" column.  We'll just rely on
# "activity_label" instead.
colCount <- length(df)
df <- select(df, (colCount - 2), colCount, 1:(colCount-3))

#
# STEP 5:  From the data set in step 4, creates a second, independent tidy data
#          set with the average of each variable for each activity and each subject.
#
# Use dplyr to group the data by subject and activity.  Then for each of the
# remaining 66 columns, compute the mean for that subject/activity grouping.
tidy.df <- group_by(df, subject_id, activity_label) %>%
              summarise_each(funs(mean))

# And that's all.  We now have a tidy dataset stored in the "tidy.df" variable.
# From here, it can be used to do further analysis or exported to a text
# file and shared with others.
#
# END
