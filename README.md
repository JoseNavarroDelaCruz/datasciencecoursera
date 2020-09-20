# README

The purpose of this file is to describe which files are in the repository and how the converge in the R script to output a tidy data set.


## Files and descriptions

#### X_train
This file contains in .txt format the training set used in the study, it has 7352 observations and 561 features.

#### y_train
These are the labels corresponding to X_train, it is a .txt file.

#### X_test
Also a .txt file, it contains the independent variables measures for the observations of the test set.

#### y_test
This .txt file contains the labels corresponding to X_test.

#### Subject_train and Subject_test
They contain the IDs or identifications for each one of the participants in the study for the training and test set respectively.

#### features
A .txt file that contains the raw names for each one of the 561 variables.

#### Activity labels
This file presents the 6 activities for the subjects.


### Project summary

1. The previously mentioned files were uploaded to R. rbind() function was used to merge X_Train and X_test, y_train and y_test and subject_train and subject_t in three general datasets.
2. The features were read, and using grep() function, only the most relevant variables were selected. They were edited for easier reading.
3. The levels of the Activity variable were coerced to factor and more descriptive names were chosen.
4. Using melt() and dcast(), the tidy data set was created. It includes the mean and standard deviation for each one of the variables.

