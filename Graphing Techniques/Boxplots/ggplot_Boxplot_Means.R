# Load ggplot2
library("ggplot2")

# Seed data
set.seed(1234)
df <- data.frame(cond = factor( rep(c("A","B"), each=200) ), 
                 rating = c(rnorm(200),rnorm(200, mean=.8)))


#Boxplot with mean displayed
ggplot(df, aes(x=cond, y=rating)) + geom_boxplot() + 
          stat_summary(fun.y="mean",geom="point",shape=23, size=3,fill="white")


