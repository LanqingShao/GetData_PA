unzip("data.zip")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
feature <- read.table("./UCI HAR Dataset/features.txt")

colnames(X_train) <- feature$V2
colnames(x_test) <- feature$V2

train <- cbind(sub_train, X_train, y_train)
test <- cbind(sub_test, x_test, y_test)

colnames(train)[1] <- "Subject"
colnames(train)[563] <- "activity"
colnames(test)[1] <- "Subject"
colnames(test)[563] <- "activity"

data <- rbind(train, test)

partial1 <- "mean()"
partial2 <- "std()"
subdata1 <- data[, grep(partial1, colnames(data))]
subdata2 <- data[, grep(partial2, colnames(data))]

subdata3 <- data[, 1]

subdata4 <- factor(data$activity, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
subdata <- cbind(subdata3, subdata4, subdata1, subdata2)

colnames(subdata)[1:2] <- c("subject", "activity")

library(reshape2)
tidy_data2 <- melt(subdata, id = c("subject", "activity"), na.rm = TRUE)
tidy_data3 <- dcast(tidy_data2, formula = activity + subject ~ variable)

write.table(tidy_data3, "tidydata.txt",row.name=FALSE)
