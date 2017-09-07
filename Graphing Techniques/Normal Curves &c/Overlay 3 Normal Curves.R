xl <- 40
xr <- 53

fooX <- function(x) dnorm(x, mean = 47.32, sd = 1.31)
plot(fooX, from = xl, to = xr)
fooY <- function(x) dnorm(x, mean = 46.00, sd = 0.92)
plot(fooY, from = xl, to = xr)
fooZ <- function(x) dnorm(x, mean = 45.55, sd = 1.18)
plot(fooZ, from = xl, to = xr)

myYLim <- c(0, 0.6)


plot(fooX, from = xl, to = xr, ylim = myYLim, col = "red", lwd = 2, xlab = "xxx", ylab = "")
plot(fooY, from = xl, to = xr, col = "blue", lwd = 2, add = TRUE)
plot(fooZ, from = xl, to = xr, col = "darkgreen", lwd = 2, add = TRUE)
#abline(v = 13.74)
text(xl+1, myYLim[2]-0.1, paste("Driphorm"))
