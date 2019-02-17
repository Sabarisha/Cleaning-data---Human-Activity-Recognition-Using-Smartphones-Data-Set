# Code book for Cleaning Human-Activity-Recognition-Using-Smartphones-Data-Set

Please read the README.md file in repository to get more background information about the dataset and the project.

In this page we will see an overview about the data in tidydata.txt file, the type of variables it holds and transformations done on original dataset to generate tidydata.txt

## Data- tidydata.txt 
* It is a text file which holds space separated values and can be imported as 1 table
* It has 180 rows of observations with 81 columns
* The file has a header which will be discussed in detail in below Variables section


## Variables
The tidydata.txt has 81 columns of which 1 column has SubjectID which is an unique identifier for users and 1 column has ActivityID which explains the activty user was performing when measurement was taken. Text file has 79 columns of average measures from each actvity for each user
### SubjectID
It is an integer and can have values from 1 to 30
### ActivityID 
It is a factor with 6 possible values
  * WALKING - when user was walking
  * WALKING_UPSTAIRS - when user was walking upstairs
  * WALKING_DOWNSTAIRS - when user was walking downstairs
  * SITTING - when user was sitting
  * STANDING - when user was standing
  * LAYING - when user was laying
### Average Measurements  
Average of all measures when user performed each activity
  #### Time Domain Measures
  * Average time-domain body acceleration along X,Y,Z directions 
    * TimeDomainBodyAccelerationMean-XYZ    
  * Standard Deviation time-domain body accleration along X,Y,Z directions 
    * TimeDomainBodyAccelerationStandardDeviation -XYZ
  * Average time-domain gravity acceleration along X,Y,Z directions 
    * TimeDomainGravityAccelerationMean-XYZ   
  * Standard Deviation time-domain gravity accleration along X,Y,Z directions 
    * TimeDomainGravityAccelerationStandardDeviation-XYZ  
  * Average time-domain body acceleration jerk (changes in acceleration with respect to time) along X,Y,Z direction
    * TimeDomainBodyAccelerationJerkMean-XYZ
  * Standard Deviation time-domain body accleration jerk (changes in acceleration with respect to time) along X,Y,Z direction
    * TimeDomainBodyAccelerationJerkStandardDeviation-XYZ
  * Average time-domain body gyro (angular velocity) along X,Y,Z directions 
    * TimeDomainBodyGyroMean-XYZ
  * Standard Deviation time-domain body gyro (angular velocity) along X,Y,Z directions 
    * TimeDomainBodyGyroStandardDeviation-XYZ
  * Average time-domain body gyro jerk (angular velocity with respect to time) along X,Y,Z directions 
    * TimeDomainBodyGyroJerkMean-XYZ
  * Standard Deviation time-domain body gyro jerk (angular velocity with respect to time) along X,Y,Z directions 
    * TimeDomainBodyGyroJerkStandardDeviation-XYZ
  * Average and standard deviation of time-domain body acceleration magnitude
    * TimeDomainBodyAccelerationMagMean
    * TimeDomainBodyAccelerationMagStandardDeviation
  * Average and standard deviation of time-domain gravity acceleration magnitude
    * TimeDomainGravityAccelerationMagMean
    * TimeDomainGravityAccelerationMagStandardDeviation
  * Average and standard deviation of time-domain body acceleration jerk (acceleration with respect to time) magnitude
    * TimeDomainBodyAccelerationJerkMagMean
    * TimeDomainBodyAccelerationJerkMagStandardDeviation
  * Average and standard deviation of time-domain body gyro (angular velocity) magnitude
    * TimeDomainBodyGyroMagMean
    * TimeDomainBodyGyroMagStandardDeviation
  * Average and standard deviation of time-domain body gyro jerk (angular velocity with respect to time) magnitude
    * TimeDomainBodyGyroJerkMagMean
    * TimeDomainBodyGyroJerkMagStandardDeviation
  
  #### Frequency Domain Measures
  * Average frequency-domain body acceleration along X,Y,Z directions 
    * FrequencyDomainBodyAccelerationMean-XYZ    
  * Standard Deviation frequency-domain body accleration along X,Y,Z directions 
    * FrequencyDomainBodyAccelerationStandardDeviation-XYZ
  * Weighted Average of frequency measures of frequency-domain body acceleration along X,Y,Z directions 
    * FrequencyDomainBodyAccelerationMeanFreq-XYZ   
  * Average frequency-domain body acceleration jerk (accceleration with respect to time) along X,Y,Z directions 
    * FrequencyDomainBodyAccelerationJerkMean-XYZ  
  * Standard Deviation frequency-domain body acceleration jerk (accceleration with respect to time) along X,Y,Z directions 
    * FrequencyDomainBodyAccelerationJerkStandardDeviation-XYZ
  * Weighted Average of frequency measures of frequency-domain body acceleration jerk(accceleration with respect to time) along X,Y,Z       directions 
    * FrequencyDomainBodyAccelerationJerkMeanFreq-XYZ
  * Average frequency-domain body gyro (angular velocity) along X,Y,Z directions 
    * FrequencyDomainBodyGyroMean-XYZ
  * Standard deviation frequency-domain body gyro (angular velocity) along X,Y,Z directions 
    * FrequencyDomainBodyGyroStandardDeviation-XYZ
  * Weighted Average of frequency measures of frequency-domain body gyro (angular velocity) along X,Y,Z directions 
    * FrequencyDomainBodyGyroMeanFreq-XYZ
  * Average, standard deviation and weighted average of frequency measures of frequency-domain body acceleration magnitude
    * FrequencyDomainBodyAccelerationMagMean
    * FrequencyDomainBodyAccelerationMagStandardDeviation
    * FrequencyDomainBodyAccelerationMagMeanFreq
  * Average, standard deviation and weighted average of frequency measures of frequency-domain body acceleration jerk (time derivative       of acceleration) magnitude
    * FrequencyDomainBodyAccelerationJerkMagMean
    * FrequencyDomainBodyAccelerationJerkMagStandardDeviation
    * FrequencyDomainBodyAccelerationJerkMagMeanFreq    
  *  Average, standard deviation and weighted average of frequency measures of body gyro (angular velocity) magnitude
    * FrequencyDomainBodyGyroMagMean                         
    * FrequencyDomainBodyGyroMagStandardDeviation          
    * FrequencyDomainBodyGyroMagMeanFreq
  * Average, standard deviation and weighted average of frequency measures of body gyro jerk(time derivative of angular velocity)           magnitude
    * FrequencyDomainBodyGyroJerkMagMean                    
    * FrequencyDomainBodyGyroJerkMagStandardDeviation
    * FrequencyDomainBodyGyroJerkMagMeanFreq
 
## Transformations
* Downloadede the zipfile (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in local machine
* Unzipped the file and stored in folder called "UCI HAR Dataset"
* Loaded training, test, activty labels and features files into separate dataframes
* Combined the training and test datasets using rbind command into 1 single dataframe called Activitydata
* The column names of Activitydata was renamed to SubjectID,ActivityID and frequency variables as given in frequency table
* Only those columns with frequency measures which had mean or std (standard deviation) in their names and SubjectID, ActivityID columns   were extracted from Activiydata dataframe and stored into same Activitydata dataframe
* The ActivityID numbers were replaced by corresponding activity labels using factor command
* Column names were cleanedd using information from feature info file
* The dataframe was grouped based on SubjectId and then based on ActivtyID to find average of all column measures and stored into new     clean dataframe called ActivityData_means which was then written into separate file called tidydata.txt




