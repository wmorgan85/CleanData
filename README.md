# CleanData

## Rationale

This project focuses on cleaning Samsung smartphone accelerometer data and shaping it into a tidy data set useful for analysis.

## Steps to Clean

1. Load all data sets (feature, subject, training and test data)
2. Create the full set of data by merging training and test observation rows
3. Merge the training and test activity id rows
4. Merge the training and test subject id rows
5. Filter the feature names to just mean/std observations, then filter down full data set to reduce to the core data frame required
6. Append the activity ids and subject ids to the core data frame
7. Convert the activity ids to descriptive labels
8. Convert the data set into a long data frame by gathering all feature variables
9. (optional) Separate the feature variables into the constituent components of feature, measure and axis
10. Group and summarise the result set on activity, subject id and variable

## Code Book
* activity_label - the activity being performed when the measurement was taken
* subject_id - the numeric identifier for the subject being measured
* variable - the feature being measured
* avg - the average value observed for the feature being measured for the given subject performing the given activity
