Cleaning and Getting Data course project code book
===================

### Analysis process

The analysis script, `run_analysis.R` reads in the processed experiment data and performs a number of steps to get it into summary form.

 - Both the processed test and training datasets are read in and eventually merged into one data frame.
 - The data columns are then given names based on the `features.txt` file.
 - Columns that hold mean or standard deviation measurements are selected from the dataset, while the other measurement columns are excluded from the rest of the analysis.
 - The activity identifiers are replaced with the activity labels based on values from the `activity_labels.txt` file.
 - Invalid characters (`()` and `-` in this case) are removed from the column names. Also, duplicate phrase `BodyBody` in some columns names is replaced with `body`.
 - All column names are then changed to lower case to make them uniform
 - The data is then grouped by subject and activity, and the mean is calculated for every measurement column.
 - The summary dataset is written to a file, `tidy.txt`.

`run_analysis.R` is well commented. Reference the file for more information on this process.

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
