library(dplyr)
library(readxl)
library(ggplot2)

data.in <- read_excel("Power_Data.xlsx", sheet=1)

blank <- as.numeric(data.in[1,4])

curve_data <- data.in[-1,c(3,4)]

n <- nrow(curve_data)

for (i in 1:n){
        curve_data$Response[i] <- curve_data$Response[i]-blank
}

curve_data <- curve_data %>%
        mutate(logV = log10(Value), logR = log10(Response))

fit <- lm(logR ~ logV, data = curve_data)
summary(fit)

confint(fit)

a <- 10^summary(fit)[[4]][1][1][1]
b <- summary(fit)[[4]][2][1][1]

x_c <- seq(from = 1, to = max(curve_data$Value), by = 1)
y_c <- blank + a*(x_c)^b

curve_line <- as.data.frame(cbind(x_c, y_c))

curve_plot <- ggplot(curve_line, aes(x=x_c, y=y_c)) +
        geom_line() +
        geom_point(data=data.in, aes(x=Value, y = Response), 
                   size=4, 
                   shape=21, 
                   fill = "cornflowerblue", 
                   colour = "black") +
        theme_bw() +
        theme(panel.grid.major = element_line(size = 0.5, color = "grey"), 
              axis.line = element_line(size = 0.7, color = "black"), 
              text = element_text(size = 14))

curve_plot

sample_data <- as.data.frame(na.omit(data.in[,5]))

results <- sample_data %>%
        mutate(Result = 10^((log10(Sample-blank)-log10(a))/b))
results



