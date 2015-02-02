library(ggplot2)
library(ggthemes)

nmmaps<-read.csv("chicago-nmmaps.csv", as.is=T)
nmmaps$date<-as.Date(nmmaps$date)
nmmaps<-nmmaps[nmmaps$date>as.Date("1996-12-31"),]
nmmaps$year<-substring(nmmaps$date,1,4)
head(nmmaps)

g <- ggplot(nmmaps, aes(x=season, y=o3)) +
        theme_bw() +
        stat_boxplot(geom ='errorbar') +
        geom_boxplot(fill="burlywood1", 
                     colour = "darkgreen",
                     outlier.colour="brown2", 
                     outlier.size=5, 
                     outlier.shape=19, 
                     notch=FALSE) +
        stat_summary(fun.y="mean", 
                     geom="point", 
                     shape=23, 
                     size=3,
                     fill="white") +
        coord_flip() +
        labs(x="Date", y=expression(paste("Temperature ( ", degree ~ F, " )")), title="Temperature") +
        theme(plot.title = element_text(size=20, face="bold", vjust=1, lineheight=1.2)) +
        theme(axis.text.x=element_text(angle=0, size=20, vjust=0.5)) +
        theme(
                axis.title.x = element_text(color="forestgreen", vjust=-0.35),
                axis.title.y = element_text(color="cadetblue" , vjust=0.35)   ) +
        theme(panel.grid.major = element_line(size = 0.5, color = "grey"), 
              axis.line = element_line(size = 0.7, color = "black"), 
              legend.position = c(0.15, 0.7), 
              text = element_text(size = 14))    
g
