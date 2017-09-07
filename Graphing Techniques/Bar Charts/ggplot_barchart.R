#load ggplot2 and gcookbook

ggplot(pg_mean, aes(x = group, y = weight)) + 
  geom_bar(stat = "identity", 
           fill = "lightblue", 
           colour = "blue") 