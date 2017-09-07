library(ggplot2)
mydata <- read.csv("Fraction2.csv", header = TRUE)
ggplot(mydata, aes(x=Process, y=Value)) +  
  geom_boxplot() + 
  geom_point() +
  geom_jitter(position = position_jitter(width = 0.01))
