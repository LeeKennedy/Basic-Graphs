library(ggplot2)
#library(ggthemes)



plot <- ggplot(faithful, aes(x=waiting)) +
        geom_histogram(binwidth=5, fill="burlywood1", colour="darkgreen") +
        geom_rug(sides="b")  # "b" = bottom
plot

#Dynamic bin size
binsize <- diff(range(faithful$waiting))/15
plot <- ggplot(faithful, aes(x=waiting)) +
        geom_histogram(binwidth=binsize, fill="burlywood1", colour="darkgreen", origin=30)
plot

library(MASS)
#Copy database
birthwt1 <- birthwt

#Convert factors to names.
birthwt1$smoke <- as.factor(birthwt1$smoke)
birthwt1$smoke <- revalue(birthwt1$smoke, c("0"="No Smoke", "1" = "Smoke"))

#Plot histogram with facets
plot2 <- ggplot(birthwt1, aes(x=bwt)) +
        geom_histogram(fill="burlywood1", colour = "darkgreen") +
        facet_grid(smoke ~ .)
plot2

#Overplotting
plot3 <- ggplot(birthwt1, aes(x=bwt, fill = smoke)) +
        geom_histogram(binwidth = 200, position = "identity", alpha = 0.8) +
        scale_fill_brewer(palette="Set1") +
        theme_bw() +
        theme(
                axis.title.x = element_text(color="forestgreen", vjust=-0.35),
                axis.title.y = element_text(color="cadetblue" , vjust=0.35)   ) +
        theme(panel.grid.major = element_line(size = 0.5, color = "grey"), 
              axis.line = element_line(size = 0.7, color = "black"), 
              legend.position = c(0.15, 0.7), 
              text = element_text(size = 14))
plot3

#Including a density plot.  The ..density.. ensures the scales are comparable.
# size determines the outlining line size.
plot4 <- ggplot(faithful, aes(x=waiting, y=..density..)) +
        geom_histogram(fill="burlywood1", colour="darkgreen", size=0.5) +
        geom_line(stat="density") +
        xlim(35,105) + 
        geom_vline(x=75, lty=2, colour="red", lwd=1) +
        theme_bw() +
        theme(
                axis.title.x = element_text(color="forestgreen", vjust=-0.35),
                axis.title.y = element_text(color="cadetblue" , vjust=0.35)   ) +
        theme(panel.grid.major = element_line(size = 0.5, color = "grey"), 
              axis.line = element_line(size = 0.7, color = "black"), 
              legend.position = c(0.15, 0.7), 
              text = element_text(size = 14))
plot4
