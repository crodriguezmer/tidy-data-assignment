# Summary of run_analysis.R

The script completes the following steps.


1) Clears the gloabal envidonment and loads required package ('reshape2').

2) Sets directories, downloads and unzips files from:
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

3) Loads and merges the training and the test sets to create one data set.

4) Extracts only the measurements on the mean and standard deviation for each measurement, using the variable names contained in 'features.txt', one of the files downloaded in the compressed document. Means are placed first, consecutively in order of appearance. Standard deviations are placed second.

5) Provides descriptive activity names by copying the selected the labels from 'activity_labels.txt'.

6) Appropriately labels each variable with descriptive names taken from 'features.txt'.

7) Saves the output in a csv file named 'means_stds_actlabs.csv'

8) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

9) Saves the second data set to a space delimited file named 'feats_act_subs.txt'.
