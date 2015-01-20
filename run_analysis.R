## First steps: set working directory. Reading data##
setwd(directory)
## Reading the train file##

## Reading the data by loops##
filenames <- list.files(directory, pattern="*.txt")
###Create list of data frame names without the ".txt" part 
names<- gsub(".txt","", filenames)
j<-1
###Load all files
for(i in names){
        a<- read.table(paste(directory,"/",i,".txt",sep=""), quote="\"")
        assign(i,a)
        j<-j+1
        rm(a)
}
## Before joining two datasets, I did some works to join the subdata together.##
##I also named the column so we do not need to name it at step 4##
## the y_train/ y_test contain the training label but in numeric form.##
## Create a new colum in character form##
colnames(y_train)<- "activity"
colnames(y_test)<- "activity"

## Buil two loops that create a new colum (activityLabel) in y_train and y_test.
for (i in 1: nrow(y_train)){
        j<- 1
        while ((y_train[i,1] !=activity_labels[j,1]) & (j<7)){
                j<-j+1
        }
        y_train[i,"activity_label"]<- activity_labels[j,2]
}
for (i in 1: nrow(y_test)){
        j<- 1
        while ((y_test[i,1] !=activity_labels[j,1]) & (j<7)){
                j<-j+1
        }
        y_test[i,"activity_label"]<- activity_labels[j,2]
}

##(4)Namming column in the X_train and X_test#### as in step 4: we need to name the column##
colnames(X_train)<- features$V2
colnames(X_test)<- features$V2
##(Step 3)Names the activities##
##joinning the activity and the subject to the main data##
X_train$label<- y_train[,2]
X_train$subject<- subject_train$V1
##1.merge two set.##
X<- rbind.data.frame(X_test,X_train)

##2.Extracts only the measurements on the mean and standard deviation for each measurement. ##
## In the data, there are some columns that have same name. Thought, we do not need##
## them. So I'll get rid of the column with duplicated names##
library(dplyr)
Y<-X[, !duplicated(colnames(X))]
## I'll select just the activity label, the subject, and the mean and the std() of each measurement##
Z<- select(Y, label, subject, contains("mean()"), contains("std()"))
## I already did  the 3 and 4 step##
##3.Uses descriptive activity names to name the activities in the data set
##4.Appropriately labels the data set with descriptive variable names. ##
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.##
new<- aggregate(Z[,3:68], by=list(Z$label, Z$subject), data=Z, FUN=mean)
write.table(new,"tidydata.txt", row.names=FALSE, sep=",")

