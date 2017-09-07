library(ggplot2)
library(plyr)

plot <- ggplot(faithful, aes(x=waiting)) +
        geom_histogram(binwidth=5, fill="beige", colour="darkgreen") +
        geom_rug(sides="b")  # "b" = bottom
plot

binsize <- diff(range(faithful$waiting))/15
plot <- ggplot(faithful, aes(x=waiting)) +
        geom_histogram(binwidth=binsize, fill="beige", colour="darkgreen", origin=30)
plot

library(MASS)
#Copy database
birthwt1 <- birthwt

#Convert factors to names.
birthwt1$smoke <- as.factor(birthwt1$smoke)
birthwt1$smoke <- revalue(birthwt1$smoke, c("0"="No Smoke", "1" = "Smoke"))

#Plot histogram with facets
plot2 <- ggplot(birthwt1, aes(x=bwt)) +
        geom_histogram(fill="lightblue", colour = "blue") +
        facet_grid(smoke ~ .)
plot2

#Overplotting
plot3 <- ggplot(birthwt1, aes(x=bwt, fill = smoke)) +
        geom_histogram(position = "identity", alpha = 0.4)
plot3

#Including a density plot.  The ..density.. ensures the scales are comparable.
# size determines the outlining line size.
plot4 <- ggplot(faithful, aes(x=waiting, y=..density..)) +
        geom_histogram(fill="cornsilk", colour="grey60", size=0.5) +
        geom_line(stat="density") +
        xlim(35,105) + 
        geom_vline(x=75, lty=2, colour="red", lwd=1)
plot4

