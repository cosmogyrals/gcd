
This is the README file for the run_analysis.R script for Getting and Tidying Data Course Assignment

The data summary is based on the Human Activity Recognition Using Smartphones Dataset Version 1.0 by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.

The script is available at https://github.com/cosmogyrals/gcd.git

The tidy.table.txt text file can be read into R with the following code:

data <- read.table("<file.path>", header = TRUE, sep = " ")


=================================================

This script presumes that the UCI_Har_Dataset had been downloaded to a subdirectory called "UCI_HAR_Dataset" in the working directory, and that all the files are in their original organization with respect to folder.

This script also presumes the R packages dplyr and tidyr and installed.

The script contains detail comments about the code, which is summarized here.

=================================================

Script actions:

1) Reads these 8 files into R and assigns object names:
	
	features.txt =	features
	activity_labels.txt =	activity_labels
	X_train.txt =	x.train
	y_train.txt =	y.train
	subject_train.txt = 	subject.train
	X_test.txt =	x.test
	y_test.txt =	y.test
	subject_test.txt =	subject.test

2) Loads the dplyr and tidyr packages into R.

3) Merges the training and test sets to create one data set for each of the x,y and subject files.

4) Creates descriptive and readable names of the activities, adds a variable to y.df and matches the new activity names to the original activity codes. The names are descriptive insofar as they provide a label of the activity, instead of a numeric code for the activity, as was the case in the original UCI_HAR_dataset presentation. Each activity is labeled by its corresponding action: Lay, Sit, Stand, Walk, WalkDown, and WalkUp.

5) Clips together the x, y and subject objects and alters the names of the columns to include the names in the features files as headers.

6) Creates an object that comprises the subset of variable names that correspond to mean and standard deviation variables, these uses this object to subset the data table such for the corresponding mean and standard deviations data.

7) Cleans up the variable names to improve readability.

	a) The "BodyBody" errors are corrected (replaced with BodyBody).
	b) The brackets "()" are removed.
	c) Dashes are replaced by the underscore character.

8) The redundant activity "Code" column is removed from the table.

9) The table is reshaped to a wider format where all of the data for an individual subject are listed in 396 variables.

10) The tidy data set is written to a text file named "tidy.table.txt", which has 30 rows and 397 columns. This wide format represents "the average of each variable for each activity and each subject" by providing a variable for each measurement. That is, each row shows all the variables for an individual subject. This approach is consistent with the tidy data guidelines described in Wickham (2014) "Tidy Data", Journal of Statistical Software, 59(1):1-23, doi 10.18637/jss.v059.i10

   


