library(reshape2)

names(airquality) <- tolower(names(airquality))
xx <- melt(airquality, id=c("month", "day"))
boxplot(xx$value~xx$variable)
head(airquality)
head(xx)
