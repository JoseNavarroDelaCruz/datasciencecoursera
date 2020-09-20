# CODEBOOK

In addition to the original codebook, this file aims to describe the modifications and additional processing done to the dataset in order to make it tidy.

## Modifications

 - Given the train and the test for X and y variables, these datasets were merged, resulting a single dataset. This also included a column for the identification of the subjects.
 - Given the features file, it was used to extract only those variables which included the mean and standard deviations.
 - Variable names were modified to exclude hyphens, parenthesis and similar.
 - Using a descriptive analysis, the Activity variable was converted into factor and its levels were changed so that they were more descriptive.
 - The Subject variable was also coerced to Factor to indicate that it allows the identification of individuals.
 
 
 ## Identification
 
 #### ID
 This variable allows to identify each one of the 30 subjects analyzed during the study.
 
 #### Activity
 This variable indicates the name of the activiy that the subject was performing during data collection.
 
 #### Various measures
 The remaining variables in the dataset register the mean and standard deviation for various metrics registeres by the sensors in the study. These include:
 
"tBodyAccmeanX" 
"tBodyAccmeanY"
"tBodyAccmeanZ" 
"tBodyAccstdX" 
"tBodyAccstdY" 
"tBodyAccstdZ" 
"tGravityAccmeanX" 
"tGravityAccmeanY" 
"tGravityAccmeanZ" 
"tGravityAccstdX" 
"tGravityAccstdY" 
"tGravityAccstdZ" 
"tBodyAccJerkmeanX" 
"tBodyAccJerkmeanY" 
"tBodyAccJerkmeanZ" 
"tBodyAccJerkstdX" 
"tBodyAccJerkstdY" 
"tBodyAccJerkstdZ" 
"tBodyGyromeanX" 
"tBodyGyromeanY" 
"tBodyGyromeanZ"
"tBodyGyrostdX" 
"tBodyGyrostdY" 
"tBodyGyrostdZ" 
"tBodyGyroJerkmeanX" 
"tBodyGyroJerkmeanY" 
"tBodyGyroJerkmeanZ" 
"tBodyGyroJerkstdX" 
"tBodyGyroJerkstdY" 
"tBodyGyroJerkstdZ" 
"tBodyAccMagmean" 
"tBodyAccMagstd" 
"tGravityAccMagmean" 
"tGravityAccMagstd" 
"tBodyAccJerkMagmean" 
"tBodyAccJerkMagstd" 
"tBodyGyroMagmean" 
"tBodyGyroMagstd" 
"tBodyGyroJerkMagmean" 
"tBodyGyroJerkMagstd" 
"fBodyAccmeanX"
"fBodyAccmeanY" 
"fBodyAccmeanZ" 
"fBodyAccstdX" 
"fBodyAccstdY"
"fBodyAccstdZ" 
"fBodyAccmeanFreqX"
"fBodyAccmeanFreqY" 
"fBodyAccmeanFreqZ"
"fBodyAccJerkmeanX" 
"fBodyAccJerkmeanY"
"fBodyAccJerkmeanZ" 
"fBodyAccJerkstdX" 
"fBodyAccJerkstdY" 
"fBodyAccJerkstdZ" 
"fBodyAccJerkmeanFreqX"
"fBodyAccJerkmeanFreqY" 
"fBodyAccJerkmeanFreqZ"
"fBodyGyromeanX" 
"fBodyGyromeanY" 
"fBodyGyromeanZ" 
"fBodyGyrostdX"
"fBodyGyrostdY" 
"fBodyGyrostdZ" 
"fBodyGyromeanFreqX" 
"fBodyGyromeanFreqY"
"fBodyGyromeanFreqZ" 
"fBodyAccMagmean" 
"fBodyAccMagstd" 
"fBodyAccMagmeanFreq" 
"fBodyBodyAccJerkMagmean" 
"fBodyBodyAccJerkMagstd" 
"fBodyBodyAccJerkMagmeanFreq" 
"fBodyBodyGyroMagmean" 
"fBodyBodyGyroMagstd"
"fBodyBodyGyroMagmeanFreq" 
"fBodyBodyGyroJerkMagmean" 
"fBodyBodyGyroJerkMagstd" 
"fBodyBodyGyroJerkMagmeanFreq"
