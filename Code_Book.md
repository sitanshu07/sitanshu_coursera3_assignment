
These datasets described below are generated in the same sequence as the executed code: 

1. data_train: The X_train dataset having the main sunbjects
2. data_test: The X_test dataset having the test subjects

3. data: The maindataset on which all the functions will be executed

4. features: The features.txt column having the column names
5. feature_names: subsetted from the above "feature" dataset to get the column names for the                   main dataset

6. label_train: The y_train column having the activity code
7. label_test: The y_test dataset

8. label_data: rbind data of the above two datasets

9. act_label: The activity label dataset

10. id_train and id_test: The train and test data for subject id
11.id_data : rbind dataset of the above two

12. mean_data: contains only the numeric columns from main dataset i.e data, so that mean
               can be calculated

13. mean: calcualted means
14. sd_data: calculated standard deviation

15. tidy_data: subsetted data from the main dataset without the label columns as it is not                numeric 

16. tidy: dataset generated after applying the aggregate function to the above dataset

17. tidy_final: The final output dataset generated after ordering the above "tidy" dataset                     according to activity code