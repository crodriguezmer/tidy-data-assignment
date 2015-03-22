# start clean and load required packages
rm(list=ls())
library(reshape2)

# go to project directory
projectdir = "~/Google Drive/Courses/gettingNcleaningData"

# download the data
setwd(sprintf("%s/data", projectdir))
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "Dataset.zip", method="curl")

# unzip contents and change dir
unzip("Dataset.zip")
setwd("./UCI HAR Dataset/")

# merge train and test datasets  (step 1)
trainX = read.table('./train/X_train.txt', header=F, sep= "")
trainY = read.table('./train/y_train.txt', header=F, sep= "")
testX = read.table('./test/X_test.txt', header=F, sep= "")
testY = read.table('./test/y_test.txt', header=F, sep= "")
fullX = rbind(trainX, testX)
fullY = rbind(trainY, testY)

# extract only the feautes related to means and standard deviations (step 2)
varNames = read.table('features.txt', header=F, sep="")[,2] # get feature names
meanVars = grepl('mean', varNames)  # logical indexes for means
stdVars   = grepl('std', varNames)  # logical indexes for stds (eew)
xtractdData = cbind(fullX[,meanVars], fullX[,stdVars])

# get activity names (for step 3)
labels = vector(length(fullY$V1), mode="character")
actlabels = read.table('activity_labels.txt')
actlabels$V2 = as.character(actlabels$V2) 
for (i in 1:dim(fullY)[1]){
    labels[i] = actlabels$V2[actlabels$V1 %in% fullY[i,]]
}

# place activity and measurement  names into dataset (completes steps 3 and 4)
meanNames = as.vector(varNames[meanVars], mode="character")
stdNames  = as.vector(varNames[stdVars], mode="character")
names(xtractdData) = c(meanNames, stdNames)
xtractdData$activity = labels
write.csv(xtractdData[,c(80,1:79)], 'means_stds_actlabs.csv') 
# make file prettier by placing labels on first column

# get subject names to make a second tidy dataset (step 5)
trainsubs = read.table('./train/subject_train.txt', header=F, sep= "")
testsubs  = read.table('./test/subject_test.txt', header=F, sep= "")

subjects = rbind(trainsubs, testsubs) 
xtractdData$subs = as.factor(subjects$V1)

# make the second tidy dataset
tmp = tapply(xtractdData[,1], xtractdData[,80:81], mean)
tidyd2 = melt( tmp, id=c("activity", "sub"), measure.vars=names(xtractdData[,1]) )  # initialize
names(tidyd2)[3] = names(xtractdData)[1]
nameind = 4

for (var in xtractdData[,2:79]){
  tmp =  tapply(var, xtractdData[,80:81], mean)
  tidyd2 = cbind(tidyd2, melt( tmp, id=c("activity", "sub"), measure.vars=names(var) )[,3] )
  
  names(tidyd2)[nameind] = names(xtractdData)[nameind-2]
  nameind = nameind + 1
}
write.table(tidyd2, 'feats_act_subs.txt', row.name=FALSE) 

