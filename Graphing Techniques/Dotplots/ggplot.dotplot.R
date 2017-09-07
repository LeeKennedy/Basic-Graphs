library(gcookbook)
countries2009 <- subset(countries, Year == 2009 & healthexp > 2000)

plot <- ggplot(countries2009, aes(x=infmortality)) +
        geom_dotplot(fill="cornsilk", colour="darkgreen")
plot