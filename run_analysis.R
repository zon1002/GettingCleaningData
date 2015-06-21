
#Read all x data & merge dataset
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", as.is = TRUE)
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", as.is = TRUE)
x_total <- rbind(train_x,test_x)

#Read all y data & merge dataset
train_y <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE, sep = "", as.is = TRUE)
test_y <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE, sep = "", as.is = TRUE)
y_total <- rbind(train_y,test_y)

#Read all subject data & merge dataset
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "", as.is = TRUE)
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "", as.is = TRUE)
subject_total <- rbind(train_subject,test_subject)

#Read features
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "", as.is = TRUE)
#Assign features names to dataset x column
colnames(x_total) <- features[,2]

#Searching "mean" and "standard deviation" measurements columns 
MeanSd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
#Extraxt the "mean" and "standard deviation" columns
ExtractMeasurement <- x_total[,MeanSd]

#Read activity labels
acts <- read.table('./UCI HAR Dataset/activity_labels.txt')
#Assign/replace Activity Name to dataset y
y_total[, 1] = acts[y_total[, 1], 2]
#Assign column names
colnames(y_total) <- 'Activity'
colnames(subject_total) <- 'Subject'

#Merge dataset & Save it
Dataset <- cbind(subject_total, y_total, ExtractMeasurement)
write.table(Dataset, "TidyDataSet.txt", row.name = FALSE)

#Split Dataset to two group subset and apply mean function or each variable for each activity and each subject.
avg <- aggregate(Dataset, by = list(Activities=Dataset$Activity, Subject = Dataset$Subject), FUN = mean)
avg <- avg[, !(colnames(average.df) %in% c("Subject", "Activity"))]
write.table(avg, 'Average.txt', row.names = FALSE)
