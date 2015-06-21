library(dplyr)
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="", as.is=TRUE)
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="", as.is=TRUE)
x_total <- rbind(train_x,test_x)

train_y <- read.table("./UCI HAR Dataset/train/Y_train.txt", header=FALSE, sep="", as.is=TRUE)
test_y <- read.table("./UCI HAR Dataset/test/Y_test.txt", header=FALSE, sep="", as.is=TRUE)
y_total <- rbind(train_y,test_y)

train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="", as.is=TRUE)
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="", as.is=TRUE)
subject_total <- rbind(train_subject,test_subject)

features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,sep="",as.is=TRUE)
#features[,2]<-tolower(features[,2])
#features[,2]<-gsub("\\-", "1", features[,2])
#features[,2]<-gsub("\\(|\\)", "", features[,2])
colnames(x_total) <- features[,2]

MeanSd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
ExtractMeasurement <- x_total[,MeanSd]

acts <- read.table('./UCI HAR Dataset/activity_labels.txt')

y_total[, 1] = acts[y_total[, 1], 2]
colnames(y_total) <- 'Activity'
colnames(subject_total) <- 'Subject'

TidyData <- cbind(ExtractMeasurement, subject_total, y_total)
write.table(TidyData, "TidyData.txt", row.name = FALSE)



