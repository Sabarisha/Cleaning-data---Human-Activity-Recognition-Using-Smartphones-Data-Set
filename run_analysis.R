##downloading the dataset into a local machine
filename<-"project_dataset.zip"

##If the zip file does not exist in system then download the zip file using the url
if(!file.exists(filename)){
  fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl,filename,method = "curl")
}

##If the zip file exists and if folder with actual datasets dont exist then unzip the zipfile
dataset<-"UCI HAR Dataset"
if(!file.exists(dataset)){
  unzip(filename)
}


##Load the training data into tables
train_subject<-read.table("UCI HAR Dataset/train/subject_train.txt")
train_values<-read.table("UCI HAR Dataset/train/X_train.txt")
train_labels<-read.table("UCI HAR Dataset/train/y_train.txt")

##Load the test data into tables
test_subject<-read.table("UCI HAR Dataset/test/subject_test.txt")
test_values<-read.table("UCI HAR Dataset/test/X_test.txt")
test_labels<-read.table("UCI HAR Dataset/test/y_test.txt")

#Load the activity labels into a table
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

#Load the features into a table
features<-read.table("UCI HAR Dataset/features.txt",as.is = T)


##Combine all tables in training and test folders to form complete training data table
trainingdata<-cbind(train_subject,train_values,train_labels)
testdata<-cbind(test_subject,test_values,test_labels)

#Combining Training and Test datasets to convert into 1 dataframe
Activitydata<-rbind(trainingdata,testdata)

##Renaming columns of Activitydata based on record information given in Dataset information by UCI
colnames(Activitydata)<-c("SubjectID",features[,2],"ActivityID")

##Extracting only columns which has mean or standard deviation in names
Activitydata<-Activitydata[,grepl("mean|std|SubjectID|ActivityID",colnames(Activitydata))]


##Using Activity names instead of activity ids in the data frame
##Can use multiple ifelse statements with mutate function to replace the column but you have to manually match the numbers with names
##You can merge tables Activitydata and activity_labels by activty id as unique key and then drop the column with ids and keeping only names
###You can use factor to import the names using activity labels in labels parameter to identify the ids used

Activitydata$ActivityID<-factor(Activitydata$ActivityID,levels=activity_labels[,1],labels = activity_labels[,2])


##RTidying the column names using information from feature_info file given
datacols<-colnames(Activitydata)
datacols<-gsub("mean","Mean",datacols)
datacols<-gsub("Acc","Acceleration",datacols)
datacols<-gsub("^t","TimeDomain",datacols)
datacols<-gsub("^f","FrequencyDomain",datacols)
datacols<-gsub("std","StandardDeviation",datacols)
datacols<-gsub("sma","Signal magnitude area",datacols)
datacols<-gsub("iqr","Interquartile range",datacols)
datacols<-gsub("arCoeff","Autoregresion Coefficient",datacols)
datacols<-gsub("[()-]","",datacols)
datacols<-gsub("BodyBody","Body",datacols)

colnames(Activitydata)<-datacols

##Means for each subject for each activity
library(dplyr)
ActivityData_means<-Activitydata %>% 
  group_by(SubjectID,ActivityID)%>%
  summarise_all(mean)


##Writing the mean values table into a new text file
write.table(ActivityData_means,file = "tidydata.txt",quote = F,row.names = F)


##Check the table using command read.table("tidydata.txt",header = T)
