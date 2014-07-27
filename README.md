Human Activity Recognition Using Smartphones Dataset - A "Tidy" Data Summary
==================================================================================
This README describes the contents of the files submitted towards the Project given in the "Getting and Cleaning Data" course offered by Prof Leek et al of Johns Hopkins University, Dept of Biostatistics. More details of this course project can be found here
https://class.coursera.org/getdata-005/human_grading/view/courses/972582/assessments/3/submissions

The project involves tidying and summarizing data pertaining to Human Activity Recognition that has been measured, using a smartphone, on 30 subjects performing six different activities.The data has been recorded by the accelerometer and gyroscope that are in the smartphone as a function of time, while the individual performs different activities. The dataset proivded contained two parts, a "training" dataset and a "test" dataset, with each row of the dataset representing a set of measurements taken at a point in time for a subject performing an activity, and the columns containing the different variables and parameters that were measured in this experiment.The original dataset is available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, and More information may be obtained here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The purpose of this project is to read the datasets, merge them, select a subset of the data pertaining to means and standard deviations, give descriptive names to the activities and the variable names, calculate the mean by subject and activity IDs, and write the tidy summary to a file. 

There are the 4 resulting files submitted 
- This file "README.md" which gives a brief overview of the project and the various files contained therein;
- "CodeBook.md", which gives descriptions of the variables in the tidy data and the sequence of steps followed to get the tidy data from the original data;
- "run_analysis.R", which is the R code that does all of this; and
- "tidy_data.txt", which is the tidy data that is the result of this work.

Of these, the first 3 files, "README.md", "CodeBook.md" and "tidy_data.txt" are uploaded in the github repository under https://github.com/vaidyts/tidydata, while the file "tidy_data.txt" is uploaded in the Coursera course submission page.

