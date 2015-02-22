
# Part 1

# importing data, dim = 7352*561
data_train = read.table("X_train.txt")

# importing test dataset dim = 2947 * 561
data_test = read.table("X_test.txt")

# making final dataset
data = rbind(data_train,data_test)


# importing features dataset having column names
features = read.table("features.txt")

# changing column names 

features_names = features[,2]
colnames(data) = features_names

#################################

# Part 2

# importing activity code dataset for train and test

label_train = read.table("y_train.txt")
label_test =  read.table("y_test.txt")
label_data = rbind(label_train,label_test)

# getting activity code into the dataset
 data = cbind(label_data,data)

# naming the acitivity code column
colnames(data)[1] = c("activity_code")

# importing activity names dataset
act_label = read.table("activity_labels.txt")

# merging according to data = activity code and activity label
 data = merge(data,act_label,by.x = "activity_code",by.y = "V1",all = TRUE)

 # naming the activity column
 colnames(data)[563] = c("activity_name")
 
 # importing id datasets

 id_train = read.table("subject_train.txt")
 id_test = read.table("subject_test.txt")

 id_data = rbind(id_train,id_test)

 # binding data with id
 data = cbind(id_data,data)

 # renaming id column
 colnames(data)[1] = c("id")

############################################

# Part 3

# subsetting numeric columns and getting mean of each column

mean_data = data[3:563]
mean =  as.data.frame(apply(mean_data,2,function(x) mean(x,na.rm = TRUE)))

#getitng standadrd deviation of each column

sd_data <- as.data.frame(apply(mean_data,2,function(x) sd(x,na.rm = TRUE)))

##############################################

# Part 4

# Giving descrptive variable names to the dataset "Data"

colnames(data) = tolower(colnames(data))

colnames(data) = gsub("-","_",colnames(data))
colnames(data) = gsub("()","",colnames(data))

#################################################

# Part 5

# removing activity label from the last column because it is not numeric

tidy_data = data[,1:563]

# getting final tidy dataset output

tidy = aggregate(tidy_data,by=list(tidy_data$id,tidy_data$activity_code),mean,na.rm= TRUE)
tidy = tidy[,3:565]


tidy_final = arrange(tidy,id,activity_code)

# saving the tidy output dataset

write.table(tidy_final,"tidy_data.txt",row.name = FALSE)




