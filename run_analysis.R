#Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
#The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
#A full description is available at the site where the data was obtained:
#http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#Here are the data for the project:
  
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


################################################ 
# We install the packages
################################################ 


install.packages('dplyr')
library(dplyr)



################################################ 
# PASO 0A - We seek information
################################################

# Get zip file containing the data

zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) {download.file(zipUrl, zipFile, mode = "wb")}


# we unzip the zip file containing the data when its data directory does not exist yet
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)){unzip(zipFile)}


################################################
# 0. We read the data
################################################


# reading training data

trainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
trainingValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))

# reading test data

testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))



# reads functions, without converting text labels into factors

features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)


# reading activity tags

activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")


################################################ 
# 1. Merges the training and the test sets to create one data set.
################################################ 

# concatenate individual data tables to have a single data table

humanActivity <- rbind(cbind(trainingSubjects, trainingValues, trainingActivity), 
                       cbind(testSubjects, testValues, testActivity))

View(head(humanActivity, 2))
head(humanActivity, 2)
# delete individual tables to save memory in the program

rm(trainingSubjects, trainingValues, trainingActivity, 
   testSubjects, testValues, testActivity)


# assign column names

colnames(humanActivity) <- c("subject", features[, 2], "activity")
colnames(humanActivity)

################################################ 
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
################################################ 

# # determine the columns of the dataset to hold the column name 
#and keep the data only in these columns

columnsToKeep <- grepl("subject|activity|mean|std", colnames(humanActivity))
View(columnsToKeep)

humanActivity <- humanActivity[, columnsToKeep]
View(humanActivity)


################################################ 
# 3. Uses descriptive activity names to name the activities in the data set
################################################ 


# replace activity values as factor name

humanActivity$activity <- factor(humanActivity$activity, 
                                 levels = activities[, 1], labels = activities[, 2])
View(humanActivity$activity)

################################################ 
# 4. Appropriately labels the data set with descriptive variable names.
################################################ 

# get column names
humanActivityCols <- colnames(humanActivity)

# remove special characters
humanActivityCols <- gsub("[\\(\\)-]", "", humanActivityCols)

# expand abbreviations and clear names
humanActivityCols <- gsub("^f", "frequencyDomain", humanActivityCols)
humanActivityCols <- gsub("^t", "timeDomain", humanActivityCols)
humanActivityCols <- gsub("Acc", "Accelerometer", humanActivityCols)
humanActivityCols <- gsub("Gyro", "Gyroscope", humanActivityCols)
humanActivityCols <- gsub("Mag", "Magnitude", humanActivityCols)
humanActivityCols <- gsub("Freq", "Frequency", humanActivityCols)
humanActivityCols <- gsub("mean", "Mean", humanActivityCols)
humanActivityCols <- gsub("std", "StandardDeviation", humanActivityCols)


humanActivityCols <- gsub("BodyBody", "Body", humanActivityCols)

# use other labels as column names
colnames(humanActivity) <- humanActivityCols

View(colnames(humanActivity))

################################################
# 5. From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
################################################

# group by subject and activity and summarise using mean
humanActivityMeans <- humanActivity %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

# output to file "tidy_data.txt"
write.table(humanActivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)
