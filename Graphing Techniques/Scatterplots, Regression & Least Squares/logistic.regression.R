mydata <- read.csv("http://www.ats.ucla.edu/stat/data/binary.csv")
## view the first few rows of the data
head(mydata)
summary(mydata)

#To get standard deviations
sapply(mydata, sd)

## two-way contingency table of categorical outcome and predictors we want
## to make sure there are no 0 cells
xtabs(~admit + rank, data = mydata)

#convert rank to a factor to indicate that rank should be treated as a categorical variable.
mydata$rank <- factor(mydata$rank)

mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")


#Since we gave our model a name (mylogit), R will not produce any output 
#from our regression. In order to get the results we use the summary command:
  
summary(mylogit)

#We can use the confint function to obtain confidence intervals for the coefficient estimates. 
confint(mylogit)

