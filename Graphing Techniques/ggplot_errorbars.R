library("ggplot2")
library("gcookbook")
ce <- subset(cabbage_exp, Cultivar == "c39")

ggplot(ce, aes(x=Date, y=Weight)) +
  geom_line(aes(group=1)) +
  geom_point(size=4) +
  geom_errorbar(aes(ymin=Weight-se, ymax=Weight+se), width = 0.2)
