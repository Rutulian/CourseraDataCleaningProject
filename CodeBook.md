# Codebook for Coursera Getting and Cleaning Data Project
## Dataset definition
The resultant tidydata.txt is a summary of an original dataset produced by the
Università degli Studi di Genova, recording gyroscope and accelerometer data
as volunteers performed a number of activities.  In the initial dataset these
are provided as normalised data with a number of derived features, this tidy
dataset provides the mean for each activity performing each subject for a
selection of the original normalised features.

## A comment on units
The variables in the final dataset have no units, as they are means of normalised
values.  A normalised value has no units, thus the mean also has no units.

## Variable listing
* subject is the subject identifier representing which of the 30 people who took
part in the original study this row in the table refers to.
* activity is the name of the activity (one of WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) being performed which the
features in this row apply to.

Each tidy variable name is now listed with the feature name in the original
dataset to which it corresponds.  For commentary on the meaning of the initial
features, please see features_info.txt in the UCI HAR Dataset directory
downloaded during the execution of run_analysis.R

* timedomainaccelerometerbodystandarddeviationx - tBodyAcc-std()-X
* timedomainaccelerometerbodystandarddeviationy - tBodyAcc-std()-Y
* timedomainaccelerometerbodystandarddeviationz - tBodyAcc-std()-Z
* timedomainaccelorometergravitystandarddeviationx - tGravityAcc-std()-X
* timedomainaccelorometergravitystandarddeviationy - tGravityAcc-std()-Y
* timedomainaccelorometergravitystandarddeviationz - tGravityAcc-std()-Z
* timedomainaccelerometerbodyjerkstandarddeviationx - tBodyAccJerk-std()-X
* timedomainaccelerometerbodyjerkstandarddeviationy - tBodyAccJerk-std()-Y
* timedomainaccelerometerbodyjerkstandarddeviationz - tBodyAccJerk-std()-Z
* timedomaingyroscopebodystandarddeviationx - tBodyGyro-std()-X
* timedomaingyroscopebodystandarddeviationy - tBodyGyro-std()-Y
* timedomaingyroscopebodystandarddeviationz - tBodyGyro-std()-Z
* timedomaingyroscopebodyjerkstandarddeviationx - tBodyGyroJerk-std()-X
* timedomaingyroscopebodyjerkstandarddeviationy - tBodyGyroJerk-std()-Y
* timedomaingyroscopebodyjerkstandarddeviationz - tBodyGyroJerk-std()-Z
* timedomainaccelerometerbodymagnitudestandarddeviation - tBodyAccMag-std()
* timedomainaccelerometergravitymagnitudestandarddeviation - tGravityAccMag-std()
* timedomainaccelerometerbodyjerkmagnitudestandarddeviation - tBodyAccJerkMag-std()
* timedomaingyroscopebodymagnitudestandarddeviation - tBodyGyroMag-std()
* timedomaingyroscopebodyjerkmagnitudestandarddeviation - tBodyGyroJerkMag-std()
* frequencydomainaccelerometerbodystandarddeviationx - fBodyAcc-std()-X
* frequencydomainaccelerometerbodystandarddeviationy - fBodyAcc-std()-Y
* frequencydomainaccelerometerbodystandarddeviationz - fBodyAcc-std()-Z
* frequencydomainaccelerometerbodyjerkstandarddeviationx - fBodyAccJerk-std()-X
* frequencydomainaccelerometerbodyjerkstandarddeviationy - fBodyAccJerk-std()-Y
* frequencydomainaccelerometerbodyjerkstandarddeviationz - fBodyAccJerk-std()-Z
* frequencydomaingyroscopebodystandarddeviationx - fBodyGyro-std()-X
* frequencydomaingyroscopebodystandarddeviationy - fBodyGyro-std()-Y
* frequencydomaingyroscopebodystandarddeviationz - fBodyGyro-std()-Z
* frequencydomainaccelerometerbodymagnitudestandarddeviation - fBodyAccMag-std()
* frequencydomainaccelerometerbodyjerkmagnitudestandarddeviation - fBodyBodyAccJerkMag-std()
* frequencydomaingyroscopebodymagnitudestandarddeviation - fBodyBodyGyroMag-std()
* frequencydomaingyroscopebodyjerkmagnitudestandarddeviation - fBodyBodyGyroJerkMag-std()
* timedomainaccelerometerbodymeanx - tBodyAcc-mean()-X
* timedomainaccelerometerbodymeany - tBodyAcc-mean()-Y
* timedomainaccelerometerbodymeanz - tBodyAcc-mean()-Z
* timedomainaccelorometergravitymeanx - tGravityAcc-mean()-X
* timedomainaccelorometergravitymeany - tGravityAcc-mean()-Y
* timedomainaccelorometergravitymeanz - tGravityAcc-mean()-Z
* timedomainaccelerometerbodyjerkmeanx - tBodyAccJerk-mean()-X
* timedomainaccelerometerbodyjerkmeany - tBodyAccJerk-mean()-Y
* timedomainaccelerometerbodyjerkmeanz - tBodyAccJerk-mean()-Z
* timedomaingyroscopebodymeanx - tBodyGyro-mean()-X
* timedomaingyroscopebodymeany - tBodyGyro-mean()-Y
* timedomaingyroscopebodymeanz - tBodyGyro-mean()-Z
* timedomaingyroscopebodyjerkmeanx - tBodyGyroJerk-mean()-X
* timedomaingyroscopebodyjerkmeany - tBodyGyroJerk-mean()-Y
* timedomaingyroscopebodyjerkmeanz - tBodyGyroJerk-mean()-Z
* timedomainaccelerometerbodymagnitudemean - tBodyAccMag-mean()
* timedomainaccelerometergravitymagnitudemean - tGravityAccMag-mean()
* timedomainaccelerometerbodyjerkmagnitudemean - tBodyAccJerkMag-mean()
* timedomaingyroscopebodymagnitudemean - tBodyGyroMag-mean()
* timedomaingyroscopebodyjerkmagnitudemean - tBodyGyroJerkMag-mean()
* frequencydomainaccelerometerbodymeanx - fBodyAcc-mean()-X
* frequencydomainaccelerometerbodymeany - fBodyAcc-mean()-Y
* frequencydomainaccelerometerbodymeanz - fBodyAcc-mean()-Z
* frequencydomainaccelerometerbodyjerkmeanx - fBodyAccJerk-mean()-X
* frequencydomainaccelerometerbodyjerkmeany - fBodyAccJerk-mean()-Y
* frequencydomainaccelerometerbodyjerkmeanz - fBodyAccJerk-mean()-Z
* frequencydomaingyroscopebodymeanx - fBodyGyro-mean()-X
* frequencydomaingyroscopebodymeany - fBodyGyro-mean()-Y
* frequencydomaingyroscopebodymeanz - fBodyGyro-mean()-Z
* frequencydomainaccelerometerbodymagnitudemean - fBodyAccMag-mean()
* frequencydomainaccelerometerbodyjerkmagnitudemean - fBodyBodyAccJerkMag-mean()
* frequencydomaingyroscopebodymagnitudemean - fBodyBodyGyroMag-mean()
* frequencydomaingyroscopebodyjerkmagnitudemean - fBodyBodyGyroJerkMag-mean()
