library(ggplot2)
library(tidyr)



mn1 <- 100
n1 <-1
sd1 <- 10/sqrt(n1)

mn2 <- 100
n2 <- 2
sd2 <- 10/sqrt(n2)

delta <- mn2-mn1

x <- seq(from = 70, to = 130, by = 0.5)
y1 <- dnorm(x, mean = mn2, sd = sd2)
y2 <- dnorm(x, mean = mn1, sd = sd1)

h0 <- mn1+2*sd1

data1 <- as.data.frame(y1)
data2 <- as.data.frame(y2)
data1 <- cbind(x, data1, data2)

data3 <- gather(data1, c, x)
colnames(data3)[3] <- "z"

plot1 <- ggplot(data3, aes(x = x, y = z, col = c)) +
        geom_line(size = 2) +
        #geom_vline(xintercept = 170, size = 1, lty = 2, colour = "royalblue3") +
        #geom_vline(xintercept = 170, size = 1, lty = 2, colour = "orangered3") +
        scale_color_brewer(palette="Set1", guide = FALSE) +
        #annotate("text", x = 165, y = 0.06, label = "Result") +
        #annotate("text", x = 175, y = 0.06, label = "Reference") +
        scale_x_continuous(limits = c(70, 130)) +
        scale_y_continuous(limits = c(0, 0.06)) +
        theme_bw()
plot1

pt <- power.t.test(n=NULL, delta = delta, sd = sd1, sig.level = 0.05, power = 0.6)
pt

