
Codebook for a summary table of a subset of data from the Human Activity Recognition
Using Smartphones Dataset Version 1.0 provided by Jorge L. Reyes-Ortiz, Davide Anguita, 
Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory, DITEN - 
Università degli Studi di Genova.

The original READMED and codebook for these data are pasted at the bottom of this file.

=========================================

The tidy data set presented here consists of summary data from the UCI_HAR_dataset. 

The data were estimated from 33 signals reported in the orignal study:

tBodyAcc-X, 
tBodyAcc-Y, 
tBodyAcc-Z, 
tGravityAcc-X, 
tGravityAcc-Y, 
tGravityAcc-Z, 
tBodyAccJerk-X, 
tBodyAccJerk-Y, 
tBodyAccJerk-Z, 
tBodyGyro-X, 
tBodyGyro-Y, 
tBodyGyro-Z, 
tBodyGyroJerk-X, 
tBodyGyroJerk-Y, 
tBodyGyroJerk-Z, 
tBodyAccMag, 
tGravityAccMag, 
tBodyAccJerkMag, 
tBodyGyroMag, 
tBodyGyroJerkMag, 
fBodyAcc-X, 
fBodyAcc-Y, 
fBodyAcc-Z, 
fBodyAccJerk-X, 
fBodyAccJerk-Y, 
fBodyAccJerk-Z, 
fBodyGyro-X, 
fBodyGyro-Y, 
fBodyGyro-Z, 
fBodyAccMag, 
fBodyAccJerkMag, 
fBodyGyroMag, 
fBodyGyroJerkMag

In concordance with the assignment's instructions, only data from the mean() and std()
 variables are summarized in the file "tidy.table.txt". Additional vectors (gravityMean, 
tBodyAccMean,tBodyAccJerkMean, tBodyGyroMean,tBodyGyroJerkMean), which were obtained by 
averaging the signals in a signal window sample were excluded from the summary because 
they were not themsleves the mean of one of the 33 signals shown above. 

The data are organized into a 30 X 397 table (in tidy.table.txt) with headers for each 
column. Each data value in this table represents the mean value of a measurement that was
calculated for each subject across multiple trials. The UCI_HAR_dataset originally randomly
partitioned these data into training and testing sets. The present summary table collapses 
across those original sets. 

========================================

Units:

The original acceleration measurements were shown in standard gravity units "g". The body acceleration signal was obtained by subtracting gravity from the total acceleration. The angular velocity vector was measured by the gyroscope for each window sample. The units were radians/second. These raw measurements were subsequently normalized and bound between -1 and 1.

Column descriptions:

Subject:
Positioned at the first column (left side) of the table, the Subject column provides a numeric
id label for each of the 30 individuals who participated in the study. Each subject's data is
spread out on the same row of the table as their Subject id. 

Each of the subsequent 396 columns correspond to a data variable that contains the mean value
(for each subject) for the mean or standard deviation of one of the measurements that were
provided in the X_train.txt and X_test.txt files. The header of each of the columns corresponds
to a multi-element code that identifies the specific measurement. 

	Code element:			Possible entries:
	Activity 				Lay, Sit, Stand, Walk, WalkUp, WalkDown
	Frequency or Time 		f, t
	Signal Component 		Body, Gravity
	Measurement				Acc, Gyro
	Jerk:					Jerk
	Magnitude:				Mag
	Statistic 				mean, std
	Axis					x,y,z


Activity:

The first element of the code corresponds to a label for 1 of 6 activities (behavioral actions)
that were performed by each subject. The original UCI_HAR activity labels were modified to
improve readability in table format. Here is a list showing the correspondence between the
original and modified activity labels:

	Original Label		Modified Label
	Laying				Lay
	Sitting				Sit
	Standing			Stand
	Walking				Walk
	Walking_Down		WalkDown
	Walking_Up			WalkUp

Frequency or Time: 

This code element indicates whether the variable was frequency-based or time-based.
"f" labels data that were submitted to a Free Fourier Transformation (FFT), which correspond
to frequency domain signals. 
"t" labels measurements that were captured at a constant rate of 50 Hz, which correspond to
time domain signals.

Body or Gravity:

This code element corresponds to different components of signals collected by the sensors.
"Body" were body motion components. 
"Gravity" represents a sensor acceleration signal.

Acc or Gyro:

Signal detected from either an accelerometer (Acc), which estimated axial acceleration, or
from a gyroscope (Gyro), which estimated angular velocity.

Jerk: 

Some variables contain the code element "Jerk". These columns consist of data of body linear
acceleration or angular velocity that were derived in time. 

Mag:

Some variables contain the code element "Mag". These columns consist of the calculated magnitude
of the three-dimensional signals. The magnitude was original calculated using the Euclidian norm.

Statisic:

The UCI_HAR_dataset contained a numerous measurements that were excluded from this data summary.
This summary includes variables that contained mean() or std() in its header. The code elements
"mean" and "std" correspond to those original statistical calculations.

Axis:

Some variables end with the code element X, Y, or Z. The accelerometer and gyroscopes provided
3-axial signals. The last code element (X,Y, or Z) labels the corresponding axis.

========================================

Here is a complete list of all the column headers used in the summary table:

Lay_fBodyAcc_mean_X, 
Lay_fBodyAcc_mean_Y, 
Lay_fBodyAcc_mean_Z, 
Lay_fBodyAcc_std_X, 
Lay_fBodyAcc_std_Y, 
Lay_fBodyAcc_std_Z, 
Lay_fBodyAccJerk_mean_X, 
Lay_fBodyAccJerk_mean_Y, 
Lay_fBodyAccJerk_mean_Z, 
Lay_fBodyAccJerk_std_X, 
Lay_fBodyAccJerk_std_Y, 
Lay_fBodyAccJerk_std_Z, 
Lay_fBodyAccJerkMag_mean, 
Lay_fBodyAccJerkMag_std, 
Lay_fBodyAccMag_mean, 
Lay_fBodyAccMag_std, 
Lay_fBodyGyro_mean_X, 
Lay_fBodyGyro_mean_Y, 
Lay_fBodyGyro_mean_Z, 
Lay_fBodyGyro_std_X, 
Lay_fBodyGyro_std_Y, 
Lay_fBodyGyro_std_Z, 
Lay_fBodyGyroJerkMag_mean, 
Lay_fBodyGyroJerkMag_std, 
Lay_fBodyGyroMag_mean, 
Lay_fBodyGyroMag_std, 
Lay_tBodyAcc_mean_X, 
Lay_tBodyAcc_mean_Y, 
Lay_tBodyAcc_mean_Z, 
Lay_tBodyAcc_std_X, 
Lay_tBodyAcc_std_Y, 
Lay_tBodyAcc_std_Z, 
Lay_tBodyAccJerk_mean_X, 
Lay_tBodyAccJerk_mean_Y, 
Lay_tBodyAccJerk_mean_Z, 
Lay_tBodyAccJerk_std_X, 
Lay_tBodyAccJerk_std_Y, 
Lay_tBodyAccJerk_std_Z, 
Lay_tBodyAccJerkMag_mean, 
Lay_tBodyAccJerkMag_std, 
Lay_tBodyAccMag_mean, 
Lay_tBodyAccMag_std, 
Lay_tBodyGyro_mean_X, 
Lay_tBodyGyro_mean_Y, 
Lay_tBodyGyro_mean_Z, 
Lay_tBodyGyro_std_X, 
Lay_tBodyGyro_std_Y, 
Lay_tBodyGyro_std_Z, 
Lay_tBodyGyroJerk_mean_X, 
Lay_tBodyGyroJerk_mean_Y, 
Lay_tBodyGyroJerk_mean_Z, 
Lay_tBodyGyroJerk_std_X, 
Lay_tBodyGyroJerk_std_Y, 
Lay_tBodyGyroJerk_std_Z, 
Lay_tBodyGyroJerkMag_mean, 
Lay_tBodyGyroJerkMag_std, 
Lay_tBodyGyroMag_mean, 
Lay_tBodyGyroMag_std, 
Lay_tGravityAcc_mean_X, 
Lay_tGravityAcc_mean_Y, 
Lay_tGravityAcc_mean_Z, 
Lay_tGravityAcc_std_X, 
Lay_tGravityAcc_std_Y, 
Lay_tGravityAcc_std_Z, 
Lay_tGravityAccMag_mean, 
Lay_tGravityAccMag_std

Sit_fBodyAcc_mean_X, 
Sit_fBodyAcc_mean_Y, 
Sit_fBodyAcc_mean_Z, 
Sit_fBodyAcc_std_X, 
Sit_fBodyAcc_std_Y, 
Sit_fBodyAcc_std_Z, 
Sit_fBodyAccJerk_mean_X, 
Sit_fBodyAccJerk_mean_Y, 
Sit_fBodyAccJerk_mean_Z, 
Sit_fBodyAccJerk_std_X, 
Sit_fBodyAccJerk_std_Y, 
Sit_fBodyAccJerk_std_Z, 
Sit_fBodyAccJerkMag_mean, 
Sit_fBodyAccJerkMag_std, 
Sit_fBodyAccMag_mean, 
Sit_fBodyAccMag_std, 
Sit_fBodyGyro_mean_X, 
Sit_fBodyGyro_mean_Y, 
Sit_fBodyGyro_mean_Z, 
Sit_fBodyGyro_std_X, 
Sit_fBodyGyro_std_Y, 
Sit_fBodyGyro_std_Z, 
Sit_fBodyGyroJerkMag_mean, 
Sit_fBodyGyroJerkMag_std, 
Sit_fBodyGyroMag_mean, 
Sit_fBodyGyroMag_std, 
Sit_tBodyAcc_mean_X, 
Sit_tBodyAcc_mean_Y, 
Sit_tBodyAcc_mean_Z, 
Sit_tBodyAcc_std_X, 
Sit_tBodyAcc_std_Y, 
Sit_tBodyAcc_std_Z, 
Sit_tBodyAccJerk_mean_X, 
Sit_tBodyAccJerk_mean_Y, 
Sit_tBodyAccJerk_mean_Z, 
Sit_tBodyAccJerk_std_X, 
Sit_tBodyAccJerk_std_Y, 
Sit_tBodyAccJerk_std_Z, 
Sit_tBodyAccJerkMag_mean, 
Sit_tBodyAccJerkMag_std, 
Sit_tBodyAccMag_mean, 
Sit_tBodyAccMag_std, 
Sit_tBodyGyro_mean_X, 
Sit_tBodyGyro_mean_Y, 
Sit_tBodyGyro_mean_Z, 
Sit_tBodyGyro_std_X, 
Sit_tBodyGyro_std_Y, 
Sit_tBodyGyro_std_Z, 
Sit_tBodyGyroJerk_mean_X, 
Sit_tBodyGyroJerk_mean_Y, 
Sit_tBodyGyroJerk_mean_Z, 
Sit_tBodyGyroJerk_std_X, 
Sit_tBodyGyroJerk_std_Y, 
Sit_tBodyGyroJerk_std_Z, 
Sit_tBodyGyroJerkMag_mean, 
Sit_tBodyGyroJerkMag_std, 
Sit_tBodyGyroMag_mean, 
Sit_tBodyGyroMag_std, 
Sit_tGravityAcc_mean_X, 
Sit_tGravityAcc_mean_Y, 
Sit_tGravityAcc_mean_Z, 
Sit_tGravityAcc_std_X, 
Sit_tGravityAcc_std_Y, 
Sit_tGravityAcc_std_Z, 
Sit_tGravityAccMag_mean, 
Sit_tGravityAccMag_std 

Stand_fBodyAcc_mean_X, 
Stand_fBodyAcc_mean_Y, 
Stand_fBodyAcc_mean_Z, 
Stand_fBodyAcc_std_X, 
Stand_fBodyAcc_std_Y, 
Stand_fBodyAcc_std_Z, 
Stand_fBodyAccJerk_mean_X, 
Stand_fBodyAccJerk_mean_Y, 
Stand_fBodyAccJerk_mean_Z, 
Stand_fBodyAccJerk_std_X, 
Stand_fBodyAccJerk_std_Y, 
Stand_fBodyAccJerk_std_Z, 
Stand_fBodyAccJerkMag_mean, 
Stand_fBodyAccJerkMag_std, 
Stand_fBodyAccMag_mean, 
Stand_fBodyAccMag_std, 
Stand_fBodyGyro_mean_X, 
Stand_fBodyGyro_mean_Y, 
Stand_fBodyGyro_mean_Z, 
Stand_fBodyGyro_std_X, 
Stand_fBodyGyro_std_Y, 
Stand_fBodyGyro_std_Z, 
Stand_fBodyGyroJerkMag_mean, 
Stand_fBodyGyroJerkMag_std, 
Stand_fBodyGyroMag_mean, 
Stand_fBodyGyroMag_std, 
Stand_tBodyAcc_mean_X, 
Stand_tBodyAcc_mean_Y, 
Stand_tBodyAcc_mean_Z, 
Stand_tBodyAcc_std_X, 
Stand_tBodyAcc_std_Y, 
Stand_tBodyAcc_std_Z, 
Stand_tBodyAccJerk_mean_X, 
Stand_tBodyAccJerk_mean_Y, 
Stand_tBodyAccJerk_mean_Z, 
Stand_tBodyAccJerk_std_X, 
Stand_tBodyAccJerk_std_Y, 
Stand_tBodyAccJerk_std_Z, 
Stand_tBodyAccJerkMag_mean, 
Stand_tBodyAccJerkMag_std, 
Stand_tBodyAccMag_mean, 
Stand_tBodyAccMag_std, 
Stand_tBodyGyro_mean_X, 
Stand_tBodyGyro_mean_Y, 
Stand_tBodyGyro_mean_Z, 
Stand_tBodyGyro_std_X, 
Stand_tBodyGyro_std_Y, 
Stand_tBodyGyro_std_Z, 
Stand_tBodyGyroJerk_mean_X, 
Stand_tBodyGyroJerk_mean_Y, 
Stand_tBodyGyroJerk_mean_Z, 
Stand_tBodyGyroJerk_std_X, 
Stand_tBodyGyroJerk_std_Y, 
Stand_tBodyGyroJerk_std_Z, 
Stand_tBodyGyroJerkMag_mean, 
Stand_tBodyGyroJerkMag_std, 
Stand_tBodyGyroMag_mean, 
Stand_tBodyGyroMag_std, 
Stand_tGravityAcc_mean_X, 
Stand_tGravityAcc_mean_Y, 
Stand_tGravityAcc_mean_Z, 
Stand_tGravityAcc_std_X, 
Stand_tGravityAcc_std_Y, 
Stand_tGravityAcc_std_Z, 
Stand_tGravityAccMag_mean,
Stand_tGravityAccMag_std

Walk_fBodyAcc_mean_X,
Walk_fBodyAcc_mean_Y,
Walk_fBodyAcc_mean_Z,
Walk_fBodyAcc_std_X,
Walk_fBodyAcc_std_Y,
Walk_fBodyAcc_std_Z,
Walk_fBodyAccJerk_mean_X,
Walk_fBodyAccJerk_mean_Y,
Walk_fBodyAccJerk_mean_Z,
Walk_fBodyAccJerk_std_X,
Walk_fBodyAccJerk_std_Y,
Walk_fBodyAccJerk_std_Z,
Walk_fBodyAccJerkMag_mean,
Walk_fBodyAccJerkMag_std,
Walk_fBodyAccMag_mean,
Walk_fBodyAccMag_std,
Walk_fBodyGyro_mean_X,
Walk_fBodyGyro_mean_Y,
Walk_fBodyGyro_mean_Z,
Walk_fBodyGyro_std_X,
Walk_fBodyGyro_std_Y,
Walk_fBodyGyro_std_Z,
Walk_fBodyGyroJerkMag_mean,
Walk_fBodyGyroJerkMag_std,
Walk_fBodyGyroMag_mean,
Walk_fBodyGyroMag_std,
Walk_tBodyAcc_mean_X,
Walk_tBodyAcc_mean_Y,
Walk_tBodyAcc_mean_Z,
Walk_tBodyAcc_std_X,
Walk_tBodyAcc_std_Y,
Walk_tBodyAcc_std_Z,
Walk_tBodyAccJerk_mean_X,
Walk_tBodyAccJerk_mean_Y,
Walk_tBodyAccJerk_mean_Z,
Walk_tBodyAccJerk_std_X,
Walk_tBodyAccJerk_std_Y,
Walk_tBodyAccJerk_std_Z,
Walk_tBodyAccJerkMag_mean,
Walk_tBodyAccJerkMag_std,
Walk_tBodyAccMag_mean,
Walk_tBodyAccMag_std,
Walk_tBodyGyro_mean_X,
Walk_tBodyGyro_mean_Y,
Walk_tBodyGyro_mean_Z,
Walk_tBodyGyro_std_X,
Walk_tBodyGyro_std_Y,
Walk_tBodyGyro_std_Z,
Walk_tBodyGyroJerk_mean_X,
Walk_tBodyGyroJerk_mean_Y,
Walk_tBodyGyroJerk_mean_Z,
Walk_tBodyGyroJerk_std_X,
Walk_tBodyGyroJerk_std_Y,
Walk_tBodyGyroJerk_std_Z,
Walk_tBodyGyroJerkMag_mean,
Walk_tBodyGyroJerkMag_std,
Walk_tBodyGyroMag_mean,
Walk_tBodyGyroMag_std,
Walk_tGravityAcc_mean_X,
Walk_tGravityAcc_mean_Y,
Walk_tGravityAcc_mean_Z,
Walk_tGravityAcc_std_X,
Walk_tGravityAcc_std_Y,
Walk_tGravityAcc_std_Z,
Walk_tGravityAccMag_mean,
Walk_tGravityAccMag_std

WalkDown_fBodyAcc_mean_X,
WalkDown_fBodyAcc_mean_Y,
WalkDown_fBodyAcc_mean_Z,
WalkDown_fBodyAcc_std_X,
WalkDown_fBodyAcc_std_Y,
WalkDown_fBodyAcc_std_Z,
WalkDown_fBodyAccJerk_mean_X,
WalkDown_fBodyAccJerk_mean_Y,
WalkDown_fBodyAccJerk_mean_Z,
WalkDown_fBodyAccJerk_std_X,
WalkDown_fBodyAccJerk_std_Y,
WalkDown_fBodyAccJerk_std_Z,
WalkDown_fBodyAccJerkMag_mean,
WalkDown_fBodyAccJerkMag_std,
WalkDown_fBodyAccMag_mean,
WalkDown_fBodyAccMag_std,
WalkDown_fBodyGyro_mean_X,
WalkDown_fBodyGyro_mean_Y,
WalkDown_fBodyGyro_mean_Z,
WalkDown_fBodyGyro_std_X,
WalkDown_fBodyGyro_std_Y,
WalkDown_fBodyGyro_std_Z,
WalkDown_fBodyGyroJerkMag_mean,
WalkDown_fBodyGyroJerkMag_std,
WalkDown_fBodyGyroMag_mean,
WalkDown_fBodyGyroMag_std,
WalkDown_tBodyAcc_mean_X,
WalkDown_tBodyAcc_mean_Y,
WalkDown_tBodyAcc_mean_Z,
WalkDown_tBodyAcc_std_X,
WalkDown_tBodyAcc_std_Y,
WalkDown_tBodyAcc_std_Z,
WalkDown_tBodyAccJerk_mean_X,
WalkDown_tBodyAccJerk_mean_Y,
WalkDown_tBodyAccJerk_mean_Z,
WalkDown_tBodyAccJerk_std_X,
WalkDown_tBodyAccJerk_std_Y,
WalkDown_tBodyAccJerk_std_Z,
WalkDown_tBodyAccJerkMag_mean,
WalkDown_tBodyAccJerkMag_std,
WalkDown_tBodyAccMag_mean,
WalkDown_tBodyAccMag_std,
WalkDown_tBodyGyro_mean_X,
WalkDown_tBodyGyro_mean_Y,
WalkDown_tBodyGyro_mean_Z,
WalkDown_tBodyGyro_std_X,
WalkDown_tBodyGyro_std_Y,
WalkDown_tBodyGyro_std_Z,
WalkDown_tBodyGyroJerk_mean_X,
WalkDown_tBodyGyroJerk_mean_Y,
WalkDown_tBodyGyroJerk_mean_Z,
WalkDown_tBodyGyroJerk_std_X,
WalkDown_tBodyGyroJerk_std_Y,
WalkDown_tBodyGyroJerk_std_Z,
WalkDown_tBodyGyroJerkMag_mean,
WalkDown_tBodyGyroJerkMag_std,
WalkDown_tBodyGyroMag_mean,
WalkDown_tBodyGyroMag_std,
WalkDown_tGravityAcc_mean_X,
WalkDown_tGravityAcc_mean_Y,
WalkDown_tGravityAcc_mean_Z,
WalkDown_tGravityAcc_std_X,
WalkDown_tGravityAcc_std_Y,
WalkDown_tGravityAcc_std_Z,
WalkDown_tGravityAccMag_mean,
WalkDown_tGravityAccMag_std

WalkUp_fBodyAcc_mean_X,
WalkUp_fBodyAcc_mean_Y,
WalkUp_fBodyAcc_mean_Z,
WalkUp_fBodyAcc_std_X,
WalkUp_fBodyAcc_std_Y,
WalkUp_fBodyAcc_std_Z,
WalkUp_fBodyAccJerk_mean_X,
WalkUp_fBodyAccJerk_mean_Y,
WalkUp_fBodyAccJerk_mean_Z,
WalkUp_fBodyAccJerk_std_X,
WalkUp_fBodyAccJerk_std_Y,
WalkUp_fBodyAccJerk_std_Z,
WalkUp_fBodyAccJerkMag_mean,
WalkUp_fBodyAccJerkMag_std,
WalkUp_fBodyAccMag_mean,
WalkUp_fBodyAccMag_std,
WalkUp_fBodyGyro_mean_X,
WalkUp_fBodyGyro_mean_Y,
WalkUp_fBodyGyro_mean_Z,
WalkUp_fBodyGyro_std_X,
WalkUp_fBodyGyro_std_Y,
WalkUp_fBodyGyro_std_Z,
WalkUp_fBodyGyroJerkMag_mean,
WalkUp_fBodyGyroJerkMag_std,
WalkUp_fBodyGyroMag_mean,
WalkUp_fBodyGyroMag_std,
WalkUp_tBodyAcc_mean_X,
WalkUp_tBodyAcc_mean_Y,
WalkUp_tBodyAcc_mean_Z,
WalkUp_tBodyAcc_std_X,
WalkUp_tBodyAcc_std_Y,
WalkUp_tBodyAcc_std_Z,
WalkUp_tBodyAccJerk_mean_X,
WalkUp_tBodyAccJerk_mean_Y,
WalkUp_tBodyAccJerk_mean_Z,
WalkUp_tBodyAccJerk_std_X,
WalkUp_tBodyAccJerk_std_Y,
WalkUp_tBodyAccJerk_std_Z,
WalkUp_tBodyAccJerkMag_mean,
WalkUp_tBodyAccJerkMag_std,
WalkUp_tBodyAccMag_mean,
WalkUp_tBodyAccMag_std,
WalkUp_tBodyGyro_mean_X,
WalkUp_tBodyGyro_mean_Y,
WalkUp_tBodyGyro_mean_Z,
WalkUp_tBodyGyro_std_X,
WalkUp_tBodyGyro_std_Y,
WalkUp_tBodyGyro_std_Z,
WalkUp_tBodyGyroJerk_mean_X,
WalkUp_tBodyGyroJerk_mean_Y,
WalkUp_tBodyGyroJerk_mean_Z,
WalkUp_tBodyGyroJerk_std_X,
WalkUp_tBodyGyroJerk_std_Y,
WalkUp_tBodyGyroJerk_std_Z,
WalkUp_tBodyGyroJerkMag_mean,
WalkUp_tBodyGyroJerkMag_std,
WalkUp_tBodyGyroMag_mean,
WalkUp_tBodyGyroMag_std,
WalkUp_tGravityAcc_mean_X,
WalkUp_tGravityAcc_mean_Y,
WalkUp_tGravityAcc_mean_Z,
WalkUp_tGravityAcc_std_X,
WalkUp_tGravityAcc_std_Y,
WalkUp_tGravityAcc_std_Z,
WalkUp_tGravityAccMag_mean,
WalkUp_tGravityAccMag_std

========================================

Here is the text of the original README file provided with the UCI_HAR_dataset:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age
bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have 
been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the 
training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise 
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency
 components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window,
 a vector of features was obtained by calculating variables from the time and frequency
 domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated
 body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature
 vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions
 are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the 
activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the 
smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 
element vector. The same description applies for the 'total_acc_x_train.txt' 
and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained 
by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured 
by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support 
Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be 
addressed to the authors or their institutions for its use or misuse. Any commercial 
use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



Original codebook.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
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
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
