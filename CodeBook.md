Description of the Source Data
=================

The following is sited from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows. 


Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
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

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
timebodyaccelerator-mean
timebodyacceleratorjerkmean
timebodygyroscopemean
timebodygyroscopejerkmean


### Columns in output file

The columns included in the output file are listed below:

  - subject_id - The id of the experiment participant.
  - activity_labels - The name of the activity that the measurements correspond to, like `LAYING` or `WALKING`.

All of the following fields represent the mean of recorded data points for the given subject and activity. The detailed description of the different measurement types can be found in the `features_info.txt` file included in the data [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

  - timebodyaccelerator-mean-x
  - timebodyaccelerator-mean-y
  - timebodyaccelerator-mean-z
  - timebodyaccelerator-std-x
  - timebodyaccelerator-std-y
  - timebodyaccelerator-std-z
  - timegravityaccelerator-mean-x
  - timegravityaccelerator-mean-y
  - timegravityaccelerator-mean-z
  - timegravityaccelerator-std-x
  - timegravityaccelerator-std-y
  - timegravityaccelerator-std-z
  - timebodyacceleratorjerk-mean-x
  - timebodyacceleratorjerk-mean-y
  - timebodyacceleratorjerk-mean-z
  - timebodyacceleratorjerk-std-x
  - timebodyacceleratorjerk-std-y
  - timebodyacceleratorjerk-std-z
  - timebodygyroscope-mean-x
  - timebodygyroscope-mean-y
  - timebodygyroscope-mean-z
  - timebodygyroscope-std-x
  - timebodygyroscope-std-y
  - timebodygyroscope-std-z
  - timebodygyroscopejerk-mean-x
  - timebodygyroscopejerk-mean-y
  - timebodygyroscopejerk-mean-z
  - timebodygyroscopejerk-std-x
  - timebodygyroscopejerk-std-y
  - timebodygyroscopejerk-std-z
  - timebodyacceleratormagnitude-mean
  - timebodyacceleratormagnitude-std
  - timegravityacceleratormagnitude-mean
  - timegravityacceleratormagnitude-std
  - timebodyacceleratorjerkmagnitude-mean
  - timebodyacceleratorjerkmagnitude-std
  - timebodygyroscopemagnitude-mean
  - timebodygyroscopemagnitude-std
  - timebodygyroscopejerkmagnitude-mean
  - timebodygyroscopejerkmagnitude-std
  - freqbodyaccelerator-mean-x
  - freqbodyaccelerator-mean-y
  - freqbodyaccelerator-mean-z
  - freqbodyaccelerator-std-x
  - freqbodyaccelerator-std-y
  - freqbodyaccelerator-std-z
  - freqbodyacceleratorjerk-mean-x
  - freqbodyacceleratorjerk-mean-y
  - freqbodyacceleratorjerk-mean-z
  - freqbodyacceleratorjerk-std-x
  - freqbodyacceleratorjerk-std-y
  - freqbodyacceleratorjerk-std-z
  - freqbodygyroscope-mean-x
  - freqbodygyroscope-mean-y
  - freqbodygyroscope-mean-z
  - freqbodygyroscope-std-x
  - freqbodygyroscope-std-y
  - freqbodygyroscope-std-z
  - freqbodyacceleratormagnitude-mean
  - freqbodyacceleratormagnitude-std
  - freqbodyacceleratorjerkmagnitude-mean
  - freqbodyacceleratorjerkmagnitude-std
  - freqbodygyroscopemagnitude-mean
  - freqbodygyroscopemagnitude-std
  - freqbodygyroscopejerkmagnitude-mean
  - freqbodygyroscopejerkmagnitude-std
