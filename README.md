Human Activity Recognition Using Smartphones Dataset - A "Tidy" Data Summary
==================================================================================
This README describes the contents of the files submitted towards the Project given in the "Getting and Cleaning Data" course offered by Prof Leek et al of Johns Hopkins University, Dept of Biostatistics. More details of this course project can be found here
https://class.coursera.org/getdata-005/human_grading/view/courses/972582/assessments/3/submissions

The project involves tidying and summarizing data pertaining to Human Activity Recognition that has been measured, using a smartphone, on 30 subjects performing six different activities.The data has been recorded by the accelerometer and gyroscope that are in the smartphone as a function of time, while the individual performs different activities. The dataset proivded contained two parts, a "training" dataset and a "test" dataset, with each row of the dataset representing a set of measurements taken at a point in time for a subject performing an activity, and the columns containing the different variables and parameters that were measured in this experiment.The original dataset is available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, and More information may be obtained here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The purpose of this project is to read the datasets, merge them, select a subset of the data pertaining to means and standard deviations, give descriptive names to the activities and the variable names, calculate the mean by subject and activity IDs, and write the tidy summary to a file. 

The following methodology was followed:

0) Download, unzip and load all the required files into R 

1) Merge the "train" and the "test" datasets, along with the subject and activity identifiers, to create one data set. These two datasets were 7352x561 and 2947x561 in size respectively, so the merged dataset is 10299x563 in size

2) Extract only the measurements on the mean and standard deviation for each measurement. 
This was done by searching the variable names for the keywords "mean" and "std" but excluding the variable names that had "meanFreq", the reason being that "meanFreq" is not really a measurement done on the subject. This resulted in a dataset of size 10299x68 

3) Use descriptive activity names to name the activities in the data set. This information is given in the file titled "activity_labels.txt"

4) Appropriately label the data set with descriptive variable names. This was done by expanding the short forms,capitalizing appropriately, and inserting dots in order to increase readability

5) Create a second, independent tidy data set with the average of each variable for each activity and each subject. This was done using the "aggregate" function in R, which resulted in a dataset of size 180x68

6) Output this dataset to a table file called "tidy_data.txt"

Accordingly there are the 4 resulting files 
- This file, "README.md"
- "CodeBook.md", which gives descriptions of the variables,
- "run_analysis.R", which is the R code that does all of this, and
- "tidy_data.txt", which is the tidy data that is the result of this work.

Of these, the first 3 files, "README.md", "CodeBook.md" and "tidy_data.txt" are uploaded in the github repository under https://github.com/vaidyts, while the file "tidy_data.txt" is uploaded in the course submission page.

