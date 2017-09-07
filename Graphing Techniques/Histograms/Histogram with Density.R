#data <- read.delim ('clipboard', header = FALSE)
data <- read.csv('Workbook1.csv', header = FALSE)
#data <- rnorm(300, mean = 100, sd = 15)

data2<-sapply(data,as.numeric)

hist(data2, xlab="xaxis", main="Title",ylim=c(0,0.05),col="grey",breaks=20,prob=T, xlim=c(2300,2550)) 
lines(density(data2, bw=10), col="blue", lwd=2)
rug(jitter(data2, amount=0.5),side=1)
summary(data2)
str(data)
