# run_analysis.R script for Getting and Tidying Data Course Assignment
# this script presumes that the UCI_Har_Dataset had been downloaded to 
# a subdirectory of the working directory called UCI_Har_Dataset.
# this script also presumes the R packages dplyr and tidyr and installed.

#read in files
features <- read.table("./UCI_Har_Dataset/features.txt")
activity_labels <- read.table("./UCI_Har_Dataset/activity_labels.txt")
x.train <- read.table("./UCI_Har_Dataset/train/X_train.txt")
y.train <- read.table("./UCI_Har_Dataset/train/y_train.txt")
subject.train <- read.table("./UCI_Har_Dataset/train/subject_train.txt")
x.test <- read.table("./UCI_Har_Dataset/test/X_test.txt")
y.test <- read.table("./UCI_Har_Dataset/test/y_test.txt")
subject.test <- read.table("./UCI_Har_Dataset/test/subject_test.txt")

#load packages
library(dplyr)
library(tidyr)

# Merge the training and the test sets to create one data set.
#bind rows train and test variables
x.df <- bind_rows(x.train,x.test)
y.df <- bind_rows(y.train,y.test)
subject.df <- bind_rows(subject.train,subject.test)

#rename activity labels so they are brief
#add variable to y.df named Activity that provides descriptive labels
activity_labels$V2 <- c("Walk", "WalkUp","WalkDown","Sit","Stand","Lay")
y.df$Activity <- ""
y.df$Activity <- activity_labels[,2][match(y.df$V1, activity_labels[,1])]

#clip together different parts and rename variables, remove redundant variable.
untidy.table <- cbind(subject.df,y.df,x.df)
names(untidy.table) <- c("Subject", "Code", "Activity", as.character(features$V2))

#obtain a subset of the variable names for those containing mean() and std()
var.names <- features$V2[grepl("mean|std", features$V2) 
                         & !grepl("meanFreq|angle", features$V2)]

#subset table to have only columns of mean() and std()
mean.std.df <- untidy.table[,names(untidy.table) %in% var.names]

#subset first three factor columns in of the untidy.table
first.three.df <- untidy.table[,1:3]

#clean up variable names
        #correct "BodyBody" variable names error
        #remove () brackets
        #replace dashes with underscore character             
names.sub <- names(mean.std.df)
var.names.clean <- gsub("BodyBody","Body", names.sub)
var.names.clean <- gsub("[()]","",var.names.clean)
var.names.clean <- gsub("-","_",var.names.clean)
names(mean.std.df) <- var.names.clean

#combine the first.three.df and mean.std.df
ut.2 <- cbind(first.three.df,mean.std.df)

#remove unnecessary "Code" column from untidy.table2
ut.3 <- select(ut.2, -Code)

#use group_by() then summarise_each() to reshape the table to show variable means for each subject.
ut.4 <- group_by(ut.3, Subject, Activity)
ut.5 <- summarize_all(ut.4, funs(mean))    

#widen the data frame so that measurements for each activity are spread into separate columns
ut.5 %>%
        gather(measure, value, -Subject, -Activity) %>%
        unite(col_name, Activity, measure, remove = TRUE) %>%
        mutate(dummy = 1) %>%
        spread(col_name, value) %>%
        select(-dummy) -> tidy.output.df 

#write tidy.output.df to a text file called "tidy.table.txt"
write.table(tidy.output.df, file = "tidy.table.txt", sep = " " ,col.names = TRUE ,row.names = FALSE)
