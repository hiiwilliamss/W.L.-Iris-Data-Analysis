# Importing library that contains Iris data set
library(datasets)
library(caret)

# Importing Iris data set
data(iris)

# Checking to see if there are any missing data
sum(is.na(iris))

# Setting random seed number to achieve reproducible model
set.seed(100)

# Learning Algorithm
Model <- train(Species ~ ., data = iris,
               method = "svmPoly",
               na.action = na.omit,
               preProcess=c("scale", "center"),
               trControl= trainControl(method="none"),
               tuneGrid = data.frame(degree=1, scale=1, C=1)
               )

Model <- train(Species ~ ., data = iris,
               method="rf",
               na.action = na.omit,
               preProcess=c("scale", "center"),
               trControl=trainControl(method="none")
               )