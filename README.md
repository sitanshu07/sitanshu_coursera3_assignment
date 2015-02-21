# sitanshu_coursera3_assignment

Hi, This repository has been created for my solution to getting and cleaning data course which is a part of Data Science course by the John Hopkins University.

As a small recap,there are five steps in the assignment:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Running the code:

The code is quite simple. I have simple codes to implement the solution. Mostly, as I have just started coding in R

Note:

1. Please keep all the raw data files and script in your working directory
2. Please enable the "dplyr" package as I have used it in the code

Structure:

The code is structured according to the five steps. 

step 1 :

This step imports and row binds the main dataset, i.e "X_Train" and "X_Test". The, the "features" file is imported and the column names are imported into the main data set

Step 2:

The activity code datasets ("y_train" and "y_test") are imported and row binded. This dataset is then column binded with the main dataset of step 1. The activity_labels txt file is then imported. A simple merge with the label file then gets the label names into the dataset. The id column files (subject_train and subject_test) are then mported. The dataset is then column binded with the id column

step 3:

This part gets the mean and standard deviation for every column using apply

step 4:

This part provides adequate variable names to the column headers

part 5:

This part creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
I have used the aggregate function to get the desired output


















