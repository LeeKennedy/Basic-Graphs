library(ggplot2)
data <- c(2,20,21)

df <- as.data.frame(data)

data_mean <- mean(data)

ggplot(df, aes(x = data)) + 
  geom_dotplot(colour="black", fill = "cornflowerblue") +
  scale_y_continuous(name = "", breaks = NULL) +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = data_mean, col = "red", lty=2) +
  theme_bw() +
  labs(title = "Dotplot")
