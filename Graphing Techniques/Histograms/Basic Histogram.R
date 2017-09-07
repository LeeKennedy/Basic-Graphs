data<-read.delim('clipboard', header = FALSE)

#Create dummy data
#x1 <- rnorm(30, mean = 40, sd = 8)
#x2 <- rnorm(30, mean = 5, sd = 2)
#data <- x1 + x2

data2<-sapply(data,as.numeric)

hist(data2, breaks=100, xlim=c(0,40))
rug(data2,side=1)