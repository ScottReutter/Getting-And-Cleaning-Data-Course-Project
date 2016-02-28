This project cleans data from UCI, the "Human Activity Recognition Using Smartphones Data Set", for later analysis. The following actions have been performed on the data:

1. The training and test sets have been merged into one dataset
2. The figures for the mean and standard deviation have been extracted for each measurement
3. Descriptive activity names have been given to the activities in the dataset
4. The dataset has been labeled with descriptive variable names
5. A secondary data set has been created from the original dataset, comprised of the average of each variable for each activity and each subject

The variables used in this dataset are as follows:

+The UCI data has been placed into the datasets "x_train", "y_train", "subject_train", "x_test", "y_test", and "subject_test"+
+These datasets have been merged into the datasets "x_data", "y_data", and "subject_data"+
+The names for the data are contained in the "features" dataset, which has been applied to the "meanstandard" dataset, an extract containing solely the mean and standard deviation for each measurement; a similar approach has been taken for the "activities" dataset+
+The "fulldata" dataset binds the "x_data", "y_data", and "subject_data" datasets into an all-inclusive one+
+The "averagedata" dataset takes the "fulldata" dataset and extracts the averages for each variable and activity+

The end product is a cleaned dataset of activity data.
