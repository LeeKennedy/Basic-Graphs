
library(ggplot2)
library(gcookbook)
ggplot(worldpop, aes(x = Year, y = Population)) + geom_line()
# with points
ggplot(worldpop, aes(x = Year, y = Population)) + geom_line() + geom_point()
# with points and log scale
ggplot(worldpop, aes(x = Year, y = Population)) + 
  geom_line(linetype = "dashed", size = 1, colour = "blue") + 
  geom_point(size = 4, shape = 21, colour = "red", fill = "white") + 
  scale_y_log10()
