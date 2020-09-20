library(tidyverse)
library(reshape2)

# Read training set
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
str(X_train)
str(y_train)

# Read test set
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
str(X_test)
str(y_test)

#Read subject data
sub_train <- read.table("subject_train.txt")
sub_test <- read.table("subject_test.txt")

# Merging training, test sets and subject information
X_set <- rbind(X_train, X_test)
y_set <- rbind(y_train, y_test)
sub <- rbind(sub_train, sub_test)


# Read features and activity labels
features <- read.table("features.txt")
activ_labels <- read.table("activity_labels.txt")


# extract only variables with mean and std
select_mean_std <- grep("-(mean|std).*", as.character(features[,2]))
features_needed <- features[select_mean_std, 2]

# Correct variable names
features_needed <- gsub("[-()]", "", features_needed)
features_needed <- gsub("-mean", "Mean", features_needed)
features_needed <- gsub("-std", "Std", features_needed)

# Merge all data
X_set <- select(X_set, select_mean_std)
merged_data <- cbind(sub, y_set, X_set)
colnames(merged_data) <- c("ID", "Activity", features_needed)

# Set descriptive names to Activity levels
merged_data$Activity <- as.factor(merged_data$Activity)
merged_data$Activity <- fct_collapse(merged_data$Activity, "Walking"="1", "Walking_upstairs"="2", "Walking_downstairs"="3",
                                     "Sitting"="4", "Standing"="5", "Lying"="6")

# Create a new tidy data set
melted_set <- melt(merged_data, id = c("ID", "Activity"))
means_per_subjects <- dcast(melted_set, ID+Activity~variable, mean)


write.table(means_per_subjects, file="tidy_dataset.txt", row.names = FALSE)
