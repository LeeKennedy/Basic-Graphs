library("ggplot2")
#uses inbuilt data 'msleep'.


slp = lm(sleep_total ~ log(bodywt), data = msleep)
summary(slp)

sleepplot = ggplot(data = msleep, aes(x = log(bodywt), y = sleep_total)) +
  geom_point(aes(color = vore), alpha = 0.5, size = 5, shape = 17) + 
  geom_abline(intercept = coef(slp)[1], slope = coef(slp)[2]) +
  labs(x = "Log body weight (Kg)", y = "Time asleep (hrs/day)") + 
  scale_color_discrete(name = "Functional\n feeding group", labels = c("carnivore", "herbivore", "insectivore", "omnivore")) +
  annotate("text", label = "R2 = 0.999", x = -4, y = 17)

sleepplot
