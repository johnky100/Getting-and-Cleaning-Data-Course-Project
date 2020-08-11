Coursera Activity: Coursera Data Collection and Cleansing Course

In this project, the data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, worked and cleaned to prepare ordered data that can be used for further analysis.

This repository contains the following files:

README.md, Provides an overview of the dataset and how it was created.
tidy_data.txt, which contains the data set.
CodeBook.md, codebook, which describes the data set (data, variables, and transformations used to generate the data).
run_analysis.R, the R script that was used to create the dataset

The source dataset on which this project was based was derived from the Smartphone Human Activity Recognition Dataset, which describes how the data was initially collected as follows:

The experiments have been carried out with a group of 30 volunteers within an age group of 19 to 48 years. Each person performed six activities (WALK, WALK_UP, WALK_DOWN, SITTING, STANDING, LYING) with a smartphone (Samsung Galaxy S II) on their waist. Using its built-in accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been videotaped to manually label the data. The data set obtained has been randomly divided into two sets, where 70% of the volunteers were selected to generate the training data and 30% the test data.


The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
Training and test data were first merged together to create one data set, then the measurements on the mean and standard deviation were extracted for each measurement (79 variables extracted from the original 561), and then the measurements were averaged for each subject and activity, resulting in the final data set.

Creating the data set

The R script run_analysis.R can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps (see the Code book for details, as well as the comments in the script itself):

Download and unzip source data if it doesn't exist.
Read data.
Merge the training and the test sets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement.
Use descriptive activity names to name the activities in the data set.
Appropriately label the data set with descriptive variable names.
Create a second, independent tidy set with the average of each variable for each activity and each subject.
Write the data set to the tidy_data.txt file.
The tidy_data.txt in this repository was created by running the run_analysis.R script using R version 3.2.2 (2015-08-14) on Windows 8.1 64-bit edition.

This script requires the dplyr package (version 0.4.3 was used).
