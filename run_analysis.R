## Submission for Coursera Getting and Cleaning Data Project

# Download and unzip
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="data.zip")
unzip("data.zip")

# Read in separate files
xtrain     <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain     <- read.table("UCI HAR Dataset/train/y_train.txt")

subjtrain  <- read.table("UCI HAR Dataset/train/subject_train.txt")

xtest      <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest      <- read.table("UCI HAR Dataset/test/y_test.txt")
subjtest   <- read.table("UCI HAR Dataset/test/subject_test.txt")

act_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features   <- read.table("UCI HAR Dataset/features.txt")


# Step 1 - merge test and training sets.
train <- cbind(xtrain, ytrain, subjtrain)
test  <- cbind(xtest,  ytest,  subjtest)
dat   <- rbind(train, test)

# Step 2 - extract only mean and standard deviation measurements.
# First, find feature names which are means or standard deviations.  Here I
# have chosen not to include meanFreq() values because there is no matching std,
# so the dataset would be less coherent.  It does, however, include mean()-X/Y/Z
# variables for various values
indices <- c(grep("std()",  features[[2]], fixed = TRUE), #TODO: note why meanFreq() excluded
             grep("mean()", features[[2]], fixed = TRUE))

# Subset the data to the chosen features, also including activity and subject identifiers
dat <- dat[c(indices,562,563)]

# Step 3 - name the activities within the dataset
# This step merges in the activity labels from the act_labels dataset.
# Because merge moves the shared columns to the starting position of the new
# Dataframe I have discarded it by selecting only columns 2 to 69
dat <- merge(dat,act_labels,by.x=67,by.y=1,sort=FALSE)[2:69]

# Step 4 - label the variables
# Get the character feature names and append subject and activity for the ID columns.
names <- c(as.character(features[indices,2]),"subject","activity")

# Substitute strings to satisfy tidy data requirements
names <- sub("BodyBody", "Body", names)
names <- sub("-mean...|-mean..", "mean", names)
names <- sub("-std...|-std..", "standarddeviation", names)
names <- sub("BodyAccMag", "accelerometerbodymagnitude", names)
names <- sub("BodyAccJerkMag", "accelerometerbodyjerkmagnitude", names)
names <- sub("BodyAccJerk", "accelerometerbodyjerk", names)
names <- sub("GravityAccMag", "accelerometergravitymagnitude", names)
names <- sub("BodyGyroJerkMag", "gyroscopebodyjerkmagnitude", names)
names <- sub("BodyGyroJerk", "gyroscopebodyjerk", names)
names <- sub("BodyGyroMag", "gyroscopebodymagnitude", names)
names <- sub("BodyAcc", "accelerometerbody", names)
names <- sub("GravityAcc", "accelorometergravity", names)
names <- sub("BodyGyro", "gyroscopebody", names)
names <- sub("^t", "timedomain", names)
names <- sub("^f", "frequencydomain", names)
names <- tolower(names)

dat <- setNames(dat, names)

# Step 5 - summarise
dat2 <- aggregate(dat[, 1:66], 
                  list(subject = dat$subject, activity = dat$activity), mean)

# Write output
write.table(dat2, "tidydata.txt", row.name=FALSE)


