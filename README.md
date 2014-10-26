# Coursera Getting and Cleaning Data Project Submission

## How to run
Simply load and run the run_analysis.R script.  Output will be produced in the
same directory, called tidydata.txt

## Step by Step Commentary
### Initialisation
The script first of all downloads and unzips the data again.  Although the spec
says it's ok to assume the samsung data is in the same directory, this was a
simple way to know exactly where in the directory structure the script is
running

### Step 1 - Merge Test and Training sets
This step first column-binds each features dataset to its corresponding activity
ID and subject ID columns to produce full test and training sets, then row-binds
the test and training sets together to produce a full dataset called dat.

### Step 2 - extract only mean and standard deviation measurements.
This step finds the indices for the calculated means and standard deviations
from the original dataset.  meanFreq() items are not included because they
appear to have come from a meanFreq() function which indicates some other type
of data.  I made this choice because now all means have a corresponding standard
deviation in the final dataset.

### Step 3 - name the activities within the dataset
This step merges the activity names from act_labels with the main dataset, using
the activity IDs to join on.  The first column of the dataset produced is the
activity ID column used to join on, which is then discarded as it has been
replaced by a factor column with the activity names in.

### Step 4 - label the variables
This step first gets the original variable names using the indices from step 2,
appending subject and activity as headers for those columns.
It then uses string replacement to go through the variable names and make them
conform with the requirements of given in the first lecture for next week on the
final page of [these notes]
(https://d396qusza40orc.cloudfront.net/getdata/lecture_slides/04_01_editingTextVariables.pdf)

I had originally planned to stick with the original names but there's been quite
a lot of discussion on the forums for instance in [this thread]
(https://class.coursera.org/getdata-008/forum/thread?thread_id=177) which suggest
the TAs think it's best to demonstrate you can update the variable names to
something that is to some eyes more human readable eg expanding abbreviations.

A lot of reading around the forums did suggest that this was the approach favored
by the TAs for this particular assignment, although personally I would hope to
discuss with my data clients whether camelCase naming would be more appropriate.

### Step 5 - summarize
Again in the forums there's been quite a bit of discussion about whether tidy
data means thin and long or wide and short, the general consensus seems to be
that as long as it is one or the other (ie not a mixed up mess) it's ok.  I have
chosen wide and short in this case because it reduces the number of repetitions
of the identifier fields, this makes the dataset take up a bit less space but
can make using some of the plyr manipulation functions a little trickier.