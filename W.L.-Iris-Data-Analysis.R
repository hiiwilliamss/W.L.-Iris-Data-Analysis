##################
# W.L.
# 07/23/2024
##################

#########################
#Loading in Iris data set
#########################

# Procedure

library(datasets)
data(iris)

iris2 <- datasets::iris

# Examining the data
View(iris)

###############################
# Displaying Summary Statistics
###############################

# head() / tail()
head(iris, 5)
tail(iris, 5)

# summary()
summary(iris)
summary(iris$Sepal.Length)

# Ensuring if there are any missing data
sum(is.na(iris))

# skimr() - expands on summary() by providing larger set of statistics
# install.packages("skimr")

library(skimr)

# Perform skim to display summary statistics
skim(iris)

#Group data by Species then perform skim
iris %>%
  dplyr::group_by(Species) %>%
  skim()

############################
# Quick data visualization
#
# R base plot()
############################

# Panel Plots
plot(iris)
plot(iris, col = "purple")

#Scatter Plot
plot(iris$Sepal.Width, iris$Sepal.Length)

  #Adding purple circles
  plot(iris$Sepal.Width, iris$Sepal.Length, col = "purple")

  #Implementing X & Y labels
  plot(iris$Sepal.Width, iris$Sepal.Length, col = "purple",
      xlab = "Sepal Width", ylab = "Sepal Length")

#Histogram
hist(iris$Sepal.Width)

  #Purple bars
  hist(iris$Sepal.Width, col = "purple")
  
#Feature Plots
featurePlot(x = iris[,1:4],
            y = iris$Species,
            plot = "box",
            strip = strip.custom(par.strip.text=list(cex=.7)),
            scales = list(x = list(relation="free"),
                          y = list(relation="free")))
  

  