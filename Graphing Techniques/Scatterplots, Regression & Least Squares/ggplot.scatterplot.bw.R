library("ggplot2")
#uses inbuilt data 'msleep'.

data1 <- msleep

slp = lm(sleep_total ~ log(bodywt), data = msleep)
summary(slp)

sleepplot2 = ggplot(data = msleep, aes(x = log(bodywt), y = sleep_total)) + 
  geom_point(aes(shape=vore), size=3) + 
  geom_abline(intercept=coef(slp)[1], slope=coef(slp)[2]) + 
  theme_bw(base_size = 12, base_family = "Arial") +
  annotate("text", label = "R2 = 0.999", x = -4, y = 17)

science_theme = theme(panel.grid.major = element_line(size = 0.5, color = "grey"), axis.line = element_line(size = 0.7, color = "black"), legend.position = c(0.85,0.7), text = element_text(size = 14))

sleepplot2 = sleepplot2 + science_theme
sleepplot2
