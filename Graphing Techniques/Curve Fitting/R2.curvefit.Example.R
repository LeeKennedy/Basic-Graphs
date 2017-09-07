# Create Dummy Data
a <- 0
b <- 1
e <- rnorm(5,0,0.1)
x <- 1:5
y <- a + b*x + e
data <- cbind(x,y)
data1 <- as.data.frame(data)

# Plot Data
library(ggplot2)
ggplot(data1, aes(x = x, y = y)) + geom_point(size = 3) + stat_smooth(method = lm, se = TRUE)

# Run Fitting Model : uses -1 to force through zero.
lmfit <- lm(y ~ x-1)
summary(lmfit)
