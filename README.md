# Course Project for "Getting and Cleaning Data"

###Introduction
Students in Coursera's "Getting and Cleaning Data" course are required to complete a project that takes a real-world dataset and converts it to a tidy dataset fit for further analysis.  This repository contains my submission for the project.

The data set for this project contains accelerometer readings collected from test subjects as they conducted various activities.  The raw data can be downloaded from the following URL:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

###Running the Analysis Script
This repository contains an R script file called "[run_analysis.R](https://github.com/MotorcycleHero/GettingData-Project/blob/master/run_analysis.R)".  You can run this script to transform the raw data into a tidy data set.

Before running the script, please make sure your R environment is configured properly.

1. The script requires the "[dplyr](http://cran.r-project.org/web/packages/dplyr/index.html)" package.  Please make sure you have installed this package.  (The script was written using v0.4.1, but any modern version of the package should work just fine.)

2. You **must** have a copy of the data in your current working directory.  If you download the .zip file (linked above) and unzip it without any extra parameters, your working directory should be the "UCI HAR Dataset" directory.

The script file itself contains detailed comments about each step in the process that was used to convert the data.  To fully explore how the tidy data was created, please consult that file.

###Description of the Output
When the script completes, you will have a data.frame in your environment called `tidy.df`.  This contains the tidy version of the data.

The output has one observation for each of the thrity subjects performing all six of the activities.  Therefore, the data.frame contains 180 rows.  In addition to the subject's ID and the activity name, each row contains 66 other variables.  These variables contain the mean values of the accelerometer readings recorded while the subject was performing each activity.

For a detailed description of each variable in the output, please consult the [Code Book](https://github.com/MotorcycleHero/GettingData-Project/blob/master/CodeBook.md).

The original dataset included 561 different measurements.  However, per the course assignment, the tidy data contains "only the measurements on the mean and standard deviation for each measurement".  To satisfy this requirement, I extracted all of the measurements that have "mean()" or "std()" in the column name.  I chose to exclude other measurements that were not strictly a mean or standard deviation (such as the "mean frequency" measurements).

Additionally, the rubric for the project gives the option to use a "wide" tidy dataset or a "long" tidy dataset.  I elected to use a "wide" format and keep all of the measurements in columns rather than rotating the data and putting the measurements into rows.
