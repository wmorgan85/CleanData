library(dplyr)

setwd("~/rwork/cleanData/")

data_dir <- "UCI HAR Dataset"

test_file <- file.path(data_dir,"test","X_test.txt")
test_activity_file <- file.path(data_dir, "test", "Y_test.txt")
test_subject_file <- file.path(data_dir, "test", "subject_test.txt")
train_file <- file.path(data_dir,"train","X_train.txt")
train_activity_file <- file.path(data_dir, "train", "Y_train.txt")
train_subject_file <- file.path(data_dir, "train", "subject_train.txt")

features_file <- file.path(data_dir, "features.txt")

# merge data sets
train_set <- read.table(train_file)
test_set <- read.table(test_file)
full_set <- rbind(test_set, train_set)


# merge activities
train_activity <- read.table(train_activity_file)
test_activity <- read.table(test_activity_file)
full_activity <- rbind(test_activity, train_activity)
names(full_activity) <- c("activity_label")

# merge subjects
train_subject <- read.table(train_subject_file)
test_subject <- read.table(test_subject_file)
full_subject <- rbind(test_subject, train_subject)
names(full_subject) <- c("subject_id")

# load feature names
features <- read.table(features_file, stringsAsFactors = F)
feature_names <- as.matrix(features)[,2]

# drop old sets
rm(train_set)
rm(test_set)
rm(train_activity)
rm(test_activity)
rm(train_subject)
rm(test_subject)
rm(features)

# find features containing mean/std, then rename cols
feat_list <- c(grep(x = feature_names, pattern = "mean"), grep(x = feature_names, pattern = "std"))
core_set <- full_set[,feat_list]
names(core_set) <- feature_names[feat_list]

# join activity labels and subject id
core_set <- cbind(core_set, full_activity, full_subject)

# drop old sets
rm(full_activity)
rm(full_subject)

# convert activities to factors
core_set$activity_label <- as.factor(core_set$activity_label)
activities <- factor(c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                       "SITTING","STANDING","LAYING"))
levels(core_set$activity_label) <- activities

# convert to long data set
long_set <- gather(core_set, variable, level, -c(activity_label,subject_id))

# if splitting further into core features of each variable, separate with...
#separate_set <- separate(long_set, variable, c("variable","measure","axis"))

# group and apply
result_output <- group_by(long_set, activity_label, subject_id, variable) %>%
  summarise(avg = mean(level))

