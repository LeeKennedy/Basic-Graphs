# C&P data into curve.csv in the Working Data folder.
test <- read.csv("curve.csv")

plot(test$X,test$Y,
     main = "Main Text",
     sub = "Bottom text",
     col = "blue",
     xlab = "x label",
     ylab = "y label",
     ylim = c(0,20),
     xlim = c(0,20))
cor(test$Y,test$X)
fit <- lm(test$Y ~ test$X)
#fit <- lm(test$Y ~ test$X -1) #forces through zero
fit
# plot(fit) #plots residuals
summary(fit)
abline(fit, col = "darkgreen", lwd=1)
# fitted(fit) # returns the predicted values
#predict(fit, newdata = 1, se.fit = TRUE) # predicted values plus error
