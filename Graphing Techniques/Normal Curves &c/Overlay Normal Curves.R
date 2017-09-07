fooX <- function(x) dnorm(x, mean = 3.9, sd = 0.38)
plot(fooX, from = 2, to = 6)
fooY <- function(x) dnorm(x, mean = 3.58, sd = 0.22)
plot(fooY, from = 2, to = 6)

myYLim <- c(0,2)
plot(fooX, from = 2, to = 6, ylim = myYLim, col = "red", lwd = 4, xlab = "Vitamin B12, ug/100g", ylab = "")
plot(fooY, from = 2, to = 6, col = "blue", lwd = 4, add = TRUE)

#abline(v = 13.74)
text(2.5, 1.5, paste("Blue = New method \n Red = Current Method"))
