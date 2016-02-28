library(plyr)

# Step 1: Merge the training and the test sets to create one data set
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

subject_test <- read.table("test/subject_test.txt")

# Create datasets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Step 2: # Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt")
meanstandard <- grep("-(mean|std)\\(\\)", features[, 2])

# Subset the columns and correct the names
x_data <- x_data[, meanstandard]
names(x_data) <- features[meanstandard, 2]

# Step 3: Use descriptive activity names to name the activities in the dataset
activities <- read.table("activity_labels.txt")
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

# Step 4: Appropriately label the dataset with descriptive variable names
names(subject_data) <- "subject"
fulldata <- cbind(x_data, y_data, subject_data)

# Step 5: Create a second, independent tidy data set with the average of each variable for each activity and subject
averagedata <- ddply(fulldata, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(averagedata, "averagedata.txt", row.name=FALSE)