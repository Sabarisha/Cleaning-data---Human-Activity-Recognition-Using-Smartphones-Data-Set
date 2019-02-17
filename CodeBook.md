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
  




