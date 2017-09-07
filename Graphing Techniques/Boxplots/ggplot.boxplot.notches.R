# load ggplot2 and gcookbook
library(MASS)
ggplot(birthwt, aes(x=factor(race), y = bwt)) + geom_boxplot(outlier.size = 5, outlier.shape = 21, notch = TRUE) + stat_summary(fun.y="mean", geom = "point", shape = 23, size = 3, fill = "white")