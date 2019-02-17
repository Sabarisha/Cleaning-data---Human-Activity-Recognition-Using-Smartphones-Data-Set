#Cleaning Data - Human Activity Recognition Using Smartphones Dataset

##Background Information 
One of the most exciting areas in data science right now is wearable computing - see [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like , Nike, Jawbone Up and Fitbit are competing to develop the most advanced algorithms to attract more customers. The dataset used is taken from UCI Machine Learning Repository. UCI conducted experiments on group of 30 volunters within age range of 19-48 years. Each person was asked to perform 6 activities like (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a Samsung Galaxy S II on the waist so that data can be collected from the accelerometers of the Samsung Galaxy S smartphone. The obtained dataset was randomly partitioned to generate training (70%) and test data (30%). For more information on original dataset used please click [
Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Repository Information
This repository contains the following files
*README.md - Overview of the dataset, repository information explaining about each file, link to zip file containing the original data used and hints to process the original data from UCI to create a new tidy dataset  
*tidydata.txt - this file contains the newly created tidy dataset 
*run_analysis.R - R script which describes how data was combined and processed into a tidy dataset and written into new file tidydata.txt 
*CodeBook.md - describes contents of dataset tidy.txt (data, variables and all transformations done to the original data to generate tidy dataset)

##Original data from UCI
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Hints for getting and cleaning the original data from UCI
1. Merge the training and test datasets
2. Extract only measurements on mean and standard deviation from each measurement
3. Use descriptive activity labels to name the activities in dataset instead of IDs
4. Modify all the labels/ column names with descriptives variable names
5. Create a new file to store the clean data table with average of each variable for each activity and each subject


