library(ggplot2)
#uses inbuilt data 'iris'.

X <- c(1:10)
Y <- c(1:10)

data1 <- as.data.frame(cbind(X,Y), header=TRUE)
  
#Remove the -1 if you do not want the curve forced through zero
slp = lm(Y ~ X, data = data1)
summary(slp)

dataplot = ggplot(data = iris, aes(x = X, y = Y)) + 
  geom_point(size=5, shape = 21, colour = "darkgreen") + 
  geom_abline(intercept=coef(slp)[1], slope=coef(slp)[2]) + 
  stat_smooth(method = "lm", fullrange = TRUE) +
  annotate("text", label = paste("R2 = ",round(summary(slp)$r.squared,digits=4)), x = 7.5, y = 6) +
  xlab("Values of X") +
  ylab("Values of Y") +
  geom_hline(xintercept = 0) +
  geom_vline(yintercept = 0) +
  theme_bw(base_size = 12, base_family = "Arial") 
dataplot

science_theme = theme(panel.grid.major = element_line(size = 0.5, color = "grey"), axis.line = element_line(size = 0.7, color = "black"), legend.position = c(2.3,8), text = element_text(size = 14))

dataplot = dataplot + science_theme
dataplot
