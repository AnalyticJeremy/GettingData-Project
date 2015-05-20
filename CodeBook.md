#Code Book for Course Project

The following table describes all of the variables in each observation of the tidy dataset.  Each observation has 68 variables.

The dataset contains the means of different accelerometer readings for each subject in the experiment as he or she conducted different activities.  The first two variables ("subject_id" and "activity_label") in each observation identify the subject and activity.  The remaining 66 variables contain the means of the readings.

Note that in the original data, all of the accelerometer readings have been normalized to be between -1 and +1.  Thus, in our output, the means of these readings will also fall within that same range.

Column<br>Number|Column<br>Name|Data<br>Type|Description
-----|----|---------|-----------
1|subject_id|integer|a number that identifies the subject performing the activity (ranges from 1 - 30)
2|activity_label|character|a description of the activity being measured;  will be one of:  "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"
3|tBodyAcc-mean()-X|numeric|the mean of the "tBodyAcc-mean()-X" reading from the original data for the specified subject while performing the specified activity
4|tBodyAcc-mean()-Y|numeric|the mean of the "tBodyAcc-mean()-Y" reading from the original data for the specified subject while performing the specified activity
5|tBodyAcc-mean()-Z|numeric|the mean of the "tBodyAcc-mean()-Z" reading from the original data for the specified subject while performing the specified activity
6|tBodyAcc-std()-X|numeric|the mean of the "tBodyAcc-std()-X" reading from the original data for the specified subject while performing the specified activity
7|tBodyAcc-std()-Y|numeric|the mean of the "tBodyAcc-std()-Y" reading from the original data for the specified subject while performing the specified activity
8|tBodyAcc-std()-Z|numeric|the mean of the "tBodyAcc-std()-Z" reading from the original data for the specified subject while performing the specified activity
9|tGravityAcc-mean()-X|numeric|the mean of the "tGravityAcc-mean()-X" reading from the original data for the specified subject while performing the specified activity
10|tGravityAcc-mean()-Y|numeric|the mean of the "tGravityAcc-mean()-Y" reading from the original data for the specified subject while performing the specified activity
11|tGravityAcc-mean()-Z|numeric|the mean of the "tGravityAcc-mean()-Z" reading from the original data for the specified subject while performing the specified activity
12|tGravityAcc-std()-X|numeric|the mean of the "tGravityAcc-std()-X" reading from the original data for the specified subject while performing the specified activity
13|tGravityAcc-std()-Y|numeric|the mean of the "tGravityAcc-std()-Y" reading from the original data for the specified subject while performing the specified activity
14|tGravityAcc-std()-Z|numeric|the mean of the "tGravityAcc-std()-Z" reading from the original data for the specified subject while performing the specified activity
15|tBodyAccJerk-mean()-X|numeric|the mean of the "tBodyAccJerk-mean()-X" reading from the original data for the specified subject while performing the specified activity
16|tBodyAccJerk-mean()-Y|numeric|the mean of the "tBodyAccJerk-mean()-Y" reading from the original data for the specified subject while performing the specified activity
17|tBodyAccJerk-mean()-Z|numeric|the mean of the "tBodyAccJerk-mean()-Z" reading from the original data for the specified subject while performing the specified activity
18|tBodyAccJerk-std()-X|numeric|the mean of the "tBodyAccJerk-std()-X" reading from the original data for the specified subject while performing the specified activity
19|tBodyAccJerk-std()-Y|numeric|the mean of the "tBodyAccJerk-std()-Y" reading from the original data for the specified subject while performing the specified activity
20|tBodyAccJerk-std()-Z|numeric|the mean of the "tBodyAccJerk-std()-Z" reading from the original data for the specified subject while performing the specified activity
21|tBodyGyro-mean()-X|numeric|the mean of the "tBodyGyro-mean()-X" reading from the original data for the specified subject while performing the specified activity
22|tBodyGyro-mean()-Y|numeric|the mean of the "tBodyGyro-mean()-Y" reading from the original data for the specified subject while performing the specified activity
23|tBodyGyro-mean()-Z|numeric|the mean of the "tBodyGyro-mean()-Z" reading from the original data for the specified subject while performing the specified activity
24|tBodyGyro-std()-X|numeric|the mean of the "tBodyGyro-std()-X" reading from the original data for the specified subject while performing the specified activity
25|tBodyGyro-std()-Y|numeric|the mean of the "tBodyGyro-std()-Y" reading from the original data for the specified subject while performing the specified activity
26|tBodyGyro-std()-Z|numeric|the mean of the "tBodyGyro-std()-Z" reading from the original data for the specified subject while performing the specified activity
27|tBodyGyroJerk-mean()-X|numeric|the mean of the "tBodyGyroJerk-mean()-X" reading from the original data for the specified subject while performing the specified activity
28|tBodyGyroJerk-mean()-Y|numeric|the mean of the "tBodyGyroJerk-mean()-Y" reading from the original data for the specified subject while performing the specified activity
29|tBodyGyroJerk-mean()-Z|numeric|the mean of the "tBodyGyroJerk-mean()-Z" reading from the original data for the specified subject while performing the specified activity
30|tBodyGyroJerk-std()-X|numeric|the mean of the "tBodyGyroJerk-std()-X" reading from the original data for the specified subject while performing the specified activity
31|tBodyGyroJerk-std()-Y|numeric|the mean of the "tBodyGyroJerk-std()-Y" reading from the original data for the specified subject while performing the specified activity
32|tBodyGyroJerk-std()-Z|numeric|the mean of the "tBodyGyroJerk-std()-Z" reading from the original data for the specified subject while performing the specified activity
33|tBodyAccMag-mean()|numeric|the mean of the "tBodyAccMag-mean()" reading from the original data for the specified subject while performing the specified activity
34|tBodyAccMag-std()|numeric|the mean of the "tBodyAccMag-std()" reading from the original data for the specified subject while performing the specified activity
35|tGravityAccMag-mean()|numeric|the mean of the "tGravityAccMag-mean()" reading from the original data for the specified subject while performing the specified activity
36|tGravityAccMag-std()|numeric|the mean of the "tGravityAccMag-std()" reading from the original data for the specified subject while performing the specified activity
37|tBodyAccJerkMag-mean()|numeric|the mean of the "tBodyAccJerkMag-mean()" reading from the original data for the specified subject while performing the specified activity
38|tBodyAccJerkMag-std()|numeric|the mean of the "tBodyAccJerkMag-std()" reading from the original data for the specified subject while performing the specified activity
39|tBodyGyroMag-mean()|numeric|the mean of the "tBodyGyroMag-mean()" reading from the original data for the specified subject while performing the specified activity
40|tBodyGyroMag-std()|numeric|the mean of the "tBodyGyroMag-std()" reading from the original data for the specified subject while performing the specified activity
41|tBodyGyroJerkMag-mean()|numeric|the mean of the "tBodyGyroJerkMag-mean()" reading from the original data for the specified subject while performing the specified activity
42|tBodyGyroJerkMag-std()|numeric|the mean of the "tBodyGyroJerkMag-std()" reading from the original data for the specified subject while performing the specified activity
43|fBodyAcc-mean()-X|numeric|the mean of the "fBodyAcc-mean()-X" reading from the original data for the specified subject while performing the specified activity
44|fBodyAcc-mean()-Y|numeric|the mean of the "fBodyAcc-mean()-Y" reading from the original data for the specified subject while performing the specified activity
45|fBodyAcc-mean()-Z|numeric|the mean of the "fBodyAcc-mean()-Z" reading from the original data for the specified subject while performing the specified activity
46|fBodyAcc-std()-X|numeric|the mean of the "fBodyAcc-std()-X" reading from the original data for the specified subject while performing the specified activity
47|fBodyAcc-std()-Y|numeric|the mean of the "fBodyAcc-std()-Y" reading from the original data for the specified subject while performing the specified activity
48|fBodyAcc-std()-Z|numeric|the mean of the "fBodyAcc-std()-Z" reading from the original data for the specified subject while performing the specified activity
49|fBodyAccJerk-mean()-X|numeric|the mean of the "fBodyAccJerk-mean()-X" reading from the original data for the specified subject while performing the specified activity
50|fBodyAccJerk-mean()-Y|numeric|the mean of the "fBodyAccJerk-mean()-Y" reading from the original data for the specified subject while performing the specified activity
51|fBodyAccJerk-mean()-Z|numeric|the mean of the "fBodyAccJerk-mean()-Z" reading from the original data for the specified subject while performing the specified activity
52|fBodyAccJerk-std()-X|numeric|the mean of the "fBodyAccJerk-std()-X" reading from the original data for the specified subject while performing the specified activity
53|fBodyAccJerk-std()-Y|numeric|the mean of the "fBodyAccJerk-std()-Y" reading from the original data for the specified subject while performing the specified activity
54|fBodyAccJerk-std()-Z|numeric|the mean of the "fBodyAccJerk-std()-Z" reading from the original data for the specified subject while performing the specified activity
55|fBodyGyro-mean()-X|numeric|the mean of the "fBodyGyro-mean()-X" reading from the original data for the specified subject while performing the specified activity
56|fBodyGyro-mean()-Y|numeric|the mean of the "fBodyGyro-mean()-Y" reading from the original data for the specified subject while performing the specified activity
57|fBodyGyro-mean()-Z|numeric|the mean of the "fBodyGyro-mean()-Z" reading from the original data for the specified subject while performing the specified activity
58|fBodyGyro-std()-X|numeric|the mean of the "fBodyGyro-std()-X" reading from the original data for the specified subject while performing the specified activity
59|fBodyGyro-std()-Y|numeric|the mean of the "fBodyGyro-std()-Y" reading from the original data for the specified subject while performing the specified activity
60|fBodyGyro-std()-Z|numeric|the mean of the "fBodyGyro-std()-Z" reading from the original data for the specified subject while performing the specified activity
61|fBodyAccMag-mean()|numeric|the mean of the "fBodyAccMag-mean()" reading from the original data for the specified subject while performing the specified activity
62|fBodyAccMag-std()|numeric|the mean of the "fBodyAccMag-std()" reading from the original data for the specified subject while performing the specified activity
63|fBodyBodyAccJerkMag-mean()|numeric|the mean of the "fBodyBodyAccJerkMag-mean()" reading from the original data for the specified subject while performing the specified activity
64|fBodyBodyAccJerkMag-std()|numeric|the mean of the "fBodyBodyAccJerkMag-std()" reading from the original data for the specified subject while performing the specified activity
65|fBodyBodyGyroMag-mean()|numeric|the mean of the "fBodyBodyGyroMag-mean()" reading from the original data for the specified subject while performing the specified activity
66|fBodyBodyGyroMag-std()|numeric|the mean of the "fBodyBodyGyroMag-std()" reading from the original data for the specified subject while performing the specified activity
67|fBodyBodyGyroJerkMag-mean()|numeric|the mean of the "fBodyBodyGyroJerkMag-mean()" reading from the original data for the specified subject while performing the specified activity
68|fBodyBodyGyroJerkMag-std()|numeric|the mean of the "fBodyBodyGyroJerkMag-std()" reading from the original data for the specified subject while performing the specified activity

