# Load ggplot2
library("ggplot2")
dev.off()
# Seed data
set.seed(1234)
df <- data.frame(cond = factor( rep(c("A","B"), each=200) ), 
                 rating = c(rnorm(200),rnorm(200, mean=.8)))

# A basic box plot
ggplot(df, aes(x=cond, y=rating)) + geom_boxplot()

# A basic box with the conditions colored
ggplot(df, aes(x=cond, y=rating, fill=cond)) + geom_boxplot()

# The above adds a redundant legend. With the legend removed & mean marker added:
ggplot(df, aes(x=cond, y=rating, fill=cond)) + 
  geom_boxplot(outlier.size = 5, outlier.shape = 21, notch = FALSE) +
  guides(fill=FALSE) +
  stat_summary(fun.y="mean", geom = "point", shape = 23, size = 3, fill = "white")

# With flipped axes
ggplot(df, aes(x=cond, y=rating, fill=cond)) + 
  geom_boxplot() + 
  guides(fill=FALSE) + 
  coord_flip()


