Coursera Data Get and Clean Project Codebook

The data set corresponding to this codebook can be found in the tidy_data.txt file of this repository.

For an overview of the dataset, see the README.md file in this repository.


The structure of the dataset is described in the Data section.

Variables are listed in the Variables section

The transformations that were performed on the source data to obtain the data set are presented in the Transformations section.


Data

The data file tidy_data.txt is a text file that has space-separated values.

The first row has the names of the variables, which are listed and described in the Variables section, and the next rows contain the values ​​of these variables.

Variables

Each row contains, for an activity and a topic, 79 averaged signal measurements.

Identifiers

topic

Subject identifier, integer, ranges from 1 to 30.

exercise

Activity identifier, string with 6 possible values:

WALKING: subject was walking
WALKING_UPSTAIRS: subject was walking upstairs
WALKING_DOWNSTAIRS - Subject was walking downstairs
SITTING: subject was sitting
STANDING: subject was standing
HARASSED: subject was lying
Average of measurements

All measurements are floating point values, normalized and bounded within [-1,1].

Before normalization, the acceleration measurements (variables containing accelerometer) were made in g's (9.81 ms⁻²) and the gyroscope measurements (variables containing gyroscope) were made in radians per second (rad.s⁻¹ ).

The magnitudes of the three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measures are classified into two domains:

Time domain signals (variables prefixed with timeDomain), which result from capturing raw signals from the accelerometer and gyroscope.

Signals in the frequency domain (variables prefixed by the frequency domain), resulting from the application of a Fast Fourier Transform (FFT) to some of the signals in the time domain.

Signals in the time domain.

Average time-domain body acceleration in the X, Y and Z directions:

timeDomainBodyAccelerometerMeanX
timeDomainBodyAccelerometerMeanY
timeDomainBodyAccelerometerMeanZ
Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

timeDomainBodyAccelerometerStandardDeviationX
timeDomainBodyAccelerometerStandardDeviationY
timeDomainBodyAccelerometerStandardDeviationZ
Average time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerMeanX
timeDomainGravityAccelerometerMeanY
timeDomainGravityAccelerometerMeanZ
Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerStandardDeviationX
timeDomainGravityAccelerometerStandardDeviationY
timeDomainGravityAccelerometerStandardDeviationZ
Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkMeanX
timeDomainBodyAccelerometerJerkMeanY
timeDomainBodyAccelerometerJerkMeanZ
Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkStandardDeviationX
timeDomainBodyAccelerometerJerkStandardDeviationY
timeDomainBodyAccelerometerJerkStandardDeviationZ
Average time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeMeanX
timeDomainBodyGyroscopeMeanY
timeDomainBodyGyroscopeMeanZ
Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeStandardDeviationX
timeDomainBodyGyroscopeStandardDeviationY
timeDomainBodyGyroscopeStandardDeviationZ
Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkMeanX
timeDomainBodyGyroscopeJerkMeanY
timeDomainBodyGyroscopeJerkMeanZ
Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkStandardDeviationX
timeDomainBodyGyroscopeJerkStandardDeviationY
timeDomainBodyGyroscopeJerkStandardDeviationZ
Average and standard deviation of the time-domain magnitude of body acceleration:

timeDomainBodyAccelerometerMagnitudeMean
timeDomainBodyAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of gravity acceleration:

timeDomainGravityAccelerometerMagnitudeMean
timeDomainGravityAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

timeDomainBodyAccelerometerJerkMagnitudeMean
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity:

timeDomainBodyGyroscopeMagnitudeMean
timeDomainBodyGyroscopeMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

timeDomainBodyGyroscopeJerkMagnitudeMean
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
Frequency-domain signals

Average frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerMeanX
frequencyDomainBodyAccelerometerMeanY
frequencyDomainBodyAccelerometerMeanZ
Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerStandardDeviationX
frequencyDomainBodyAccelerometerStandardDeviationY
frequencyDomainBodyAccelerometerStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerMeanFrequencyX
frequencyDomainBodyAccelerometerMeanFrequencyY
frequencyDomainBodyAccelerometerMeanFrequencyZ
Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkMeanX
frequencyDomainBodyAccelerometerJerkMeanY
frequencyDomainBodyAccelerometerJerkMeanZ
Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkStandardDeviationX
frequencyDomainBodyAccelerometerJerkStandardDeviationY
frequencyDomainBodyAccelerometerJerkStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkMeanFrequencyX
frequencyDomainBodyAccelerometerJerkMeanFrequencyY
frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
Average frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeMeanX
frequencyDomainBodyGyroscopeMeanY
frequencyDomainBodyGyroscopeMeanZ
Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeStandardDeviationX
frequencyDomainBodyGyroscopeStandardDeviationY
frequencyDomainBodyGyroscopeStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeMeanFrequencyX
frequencyDomainBodyGyroscopeMeanFrequencyY
frequencyDomainBodyGyroscopeMeanFrequencyZ
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

frequencyDomainBodyAccelerometerMagnitudeMean
frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

frequencyDomainBodyAccelerometerJerkMagnitudeMean
frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

frequencyDomainBodyGyroscopeMagnitudeMean
frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

frequencyDomainBodyGyroscopeJerkMagnitudeMean
frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

Transformations

The source data is in the following zip file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were made to the source data:

The training and test sets were merged to create one data set.

Mean and standard deviation measurements (that is, signals containing the mean and standard of the strings) were extracted for each measurement and the others were discarded.

Activity identifiers (originally coded as whole numbers between 1 and 6) were replaced by descriptive names of activities (see Identifiers section).

Variable names were replaced with descriptive variable names (for example, tBodyAcc-mean () - X expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules:
Special characters (i.e. (,) and -) removed
The initial f and t were expanded to FrequencyDomain and timeDomain respectively.
Acc, Gyro, Mag, Freq, mean and std were replaced by Accelerometer, Gyroscope, Magnitude, Frequency, Mean and Standard Deviation respectively.
Replaced (supposedly wrong according to the features_info.txt file from the source) BodyBody with Body.

From the data set from step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R R script (see the README.md file for instructions for use).