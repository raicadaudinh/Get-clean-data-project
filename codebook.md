---
title: "Codebook"
author: "Vi beo"
date: "Tuesday, January 20, 2015"
output:
  html_document:
    keep_md: yes
    number_sections: yes
    smart: no
---
---


#Raw data#

The raw datasets ** Human recogition using smartphone** can be download from this link
[Human recogition using smartphone](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
The descriptive can be fond in this link [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
#Tidy data#
## Processing the raw data##
- The first steps consists in merging the "train" and the"test" datasets. 
        * Descriptive activity names are used to name the activities in the data set
        * Thevariables in data set are labelled with descriptive variable names.
        * Merging the Xtest and the Xtrain datasets to have the "big data".
- The second step is to filter the merged data. Only the mean and standard variation of each are kept. The activity label and the subject are also kept
- The third step is to create the output data with the average of each variable for each activity and each subject
# the Variables in the tidy data#
Group.1: activity label
Group.2: subject
Only the mean() and the standart deviation of the data has been taken
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

## Explication##

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and 
tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then 
they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 
Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration 
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 
0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate 
frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
# The variables from the raw data that do not present in the tidy data#
The value of: 
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.
The inertial value

