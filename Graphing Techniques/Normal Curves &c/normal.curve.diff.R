library(ggplot2)
library(tidyr)


# Curve 1 ----------------------
mn1 <- 90
sd1 <- 10

# Curve 2 ----------------------
mn2 <- 110
sd2 <- 10

# Curve Diff ----------------------
mn3 <- (mn1 + mn2)/2
sd3 <- 10/sqrt(2)

x <- seq(from = 30, to = 150, by = 0.5)
y1 <- dnorm(x, mean = mn2, sd = sd2)
y2 <- dnorm(x, mean = mn1, sd = sd1)
z2 <- dnorm(x, mean = mn3, sd = sd3)

h0 <- mn1+2*sd1

data1 <- as.data.frame(y1)
data2 <- as.data.frame(y2)
data3 <- as.data.frame(z2)
data1 <- cbind(x, data1, data2, data3)

data3 <- gather(data1, c, x)
colnames(data3)[3] <- "p"

cols_set <- c("blue", "blue", "red")

plot1 <- ggplot(data3, aes(x = x, y = p, col = c)) +
        geom_line(size = 1) +
        geom_vline(xintercept=mn1) +
        geom_vline(xintercept = mn2) +
        scale_color_manual(values = cols_set) +
        scale_x_continuous(limits = c(30, 150)) +
        scale_y_continuous(limits = c(0, 0.06)) +
        theme_bw()
plot1

