data <- read.csv("chollinear.csv", header = TRUE)

library (ggplot2)

ggplot(data, aes(x = data$Conc, y = data$Ratio)) + 
  geom_line(linetype = "dashed",colour = "blue", size = 0.5) + 
  geom_point(size = 3) +
  xlab("Concentration, mg/mL") +
  ylab("Ratio") +
  ggtitle("Linearity of Cholesterol Standards") + 
  theme_bw() +
  annotate("text", label = "Slope = 3.8722 \n Intercept set to 0.00 \n R2 = 1.000", x = 0.1, y = 1) 

# lm(y~x) Note: "-1" forces through zero:
fit<-lm(data$Ratio ~ data$Conc-1)
summary(fit)