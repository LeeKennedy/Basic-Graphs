# load ggplot2 and gcookbook
# Only use two columns:
heightweight[,c("ageYear", "heightIn")]
ggplot(heightweight, aes(x = ageYear, y = heightIn)) + geom_point() 

heightweight[,c("sex", "ageYear", "heightIn")]
ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) + geom_point(size = 6, alpha = 0.5) 

ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) + geom_point(size = 3) + stat_smooth(method = lm, se = TRUE)

ggplot(heightweight, aes(x = ageYear, y = heightIn)) + geom_point(size = 3) + geom_rug(position = "jitter", size = 0.2)

