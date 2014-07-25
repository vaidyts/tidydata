########### PROBLEM STATEMENT #######################################################################
# You should create one R script called run_analysis.R that does the following. 
# 1.  Merges the training and the test sets to create one data set.
# 2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.	Uses descriptive activity names to name the activities in the data set
# 4.	Appropriately labels the data set with descriptive variable names. 
# 5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
########### END PROBLEM STATEMENT ###################################################################

########################################################
# Pre-Processing steps
# Download, unzip and load all the required files into R 
########################################################

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl, destfile= "dataset.zip",mode="wb")
#unzip("dataset.zip")

# The file "activity_labels.txt" is loaded into a character variable of the same name
activity_labels <- scan("UCI HAR Dataset\\activity_labels.txt",what="character")

# The file "features.txt" is loaded into a character variable of a more descriptive variable name
measurement_labels <- scan("UCI HAR Dataset\\features.txt",what="character")

# The files "subject_test.txt" and "y_test.txt" and "X_test.txt" are loaded using read.table
# I decided to give them column names at the time of loading itself
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt",col.names="SubjectID")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt",col.names="TypeOfActivity")

# Here, I give them column names which are in the "measurement_labels" variable
# The names are not completely tidy, and will be refined later
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt",col.names=measurement_labels[seq(from=2,to=1122,by=2)],check.names=TRUE)

# Similar procedure is adopted for the 3 "train" files as above
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt",col.names="SubjectID")
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt",col.names=measurement_labels[seq(from=2,to=1122,by=2)],check.names=TRUE)
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt",col.names="TypeOfActivity")

#####################################################################
# Step 1.Merge the training and the test sets to create one data set.
#####################################################################

# I preferred to use "rbind" and "cbind" instead of "merge"
# I did "cbind" on the test and train datasets in order to add the subject and activity lables to the measurement data
# Then I did "rbind" of the above 
# Looks like they could be combined into a single command
# The dataset "all" is 10299 rows x 563 cols
all <- rbind(cbind(subject_train,y_train,X_train),cbind(subject_test,y_test,X_test))

###############################################################################################
# Step 2.Extract only the measurements on the mean and standard deviation for each measurement. 
###############################################################################################

# Here I grep the column names for "mean" and "std" and make a dataset containing them using "cbind"
# There are 79 column names containing "mean" or "std", plus two more: subject id and activity id
# Hence This dataset contains 10299 rows x 81 cols 
all_mean_std <- cbind(all["SubjectID"], all["TypeOfActivity"], all[,grep("mean",names(all))], all[,grep("std",names(all))])

# I subtract the column names that contain the mean of the frequencies 
# these aren't really measurements done on the subject - atleast that is my understanding/assumption
# Final table contains 10299 rows x 68 columns
all_mean_std <- all_mean_std[ , grep("meanFreq",names(all_mean_std),invert=TRUE) ]

##############################################################################
# Step 3.Use descriptive activity names to name the activities in the data set
##############################################################################

# I did this as follows: I traversed the list called "activity_labels" which contains the numeric
# and descriptive values for the different activities
# For each numeric value found in "activity_labels", I did a gsub, i.e. multiple search and replace
# of the numeric value in the big dataframe with the descriptive value
for (i in seq(1,11,2)) { all_mean_std$TypeOfActivity <- gsub(activity_labels[i],activity_labels[i+1],all_mean_std$TypeOfActivity) }

##########################################################################
# Step 4.Appropriately label the data set with descriptive variable names. 
##########################################################################
# My strategy was as follows
# First, I removed the dots from the variable names
# Next, I made the following changes to make the variable names more descriptive
# t --> TimeDomain, f --> Frequency Domain
# X --> Xaxis, Y --> YAxis, Z --> ZAxis
# Mag --> Magnitude, Acc --> Acceleration, std --> StandardDeviation, Gyro --> Gyroscope
# I also inserted dots separating the long variable names in a way that I thought would increase readability

tmp <- names(all_mean_std)
tmp <- gsub("\\.","",tmp)
tmp <- gsub("Body","Body.",tmp)
translation <- c("^t","TimeDomain.","^f","FrequencyDomain.","X$","Xaxis","Y$","Yaxis","Z$","Zaxis", "Mag","Magnitude.","Acc","Acceleration.","mean","Mean.","std","StandardDeviation.", "Gyro","Gyroscope.","Jerk","Jerk.","Gravity","Gravity.")
for (i in seq(1,length(translation)-1,2)) { tmp <- sub(translation[i],translation[i+1],tmp) }
names(all_mean_std) <- tmp

##########################################################################################################################
# Step 5.Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
##########################################################################################################################
# I do this by using "aggregate" function by "SubjectID" and "TypeOfActivity" fields and applying "Mean" function
# Final dataset has 180 rows and 68 columns
summary_data <- aggregate(all_mean_std[,3:68],by=c(all_mean_std["SubjectID"],all_mean_std["TypeOfActivity"]),FUN=mean)

write.table(summary_data,"tidy_data.txt")

####################
# END OF ASSIGNMENT !
####################
