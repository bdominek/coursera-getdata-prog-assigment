Cleaning and Getting Data course project code book

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

