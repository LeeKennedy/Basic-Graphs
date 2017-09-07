library(ggplot2)
library(ggthemes)

nmmaps<-read.csv("chicago-nmmaps.csv", as.is=T)
nmmaps$date<-as.Date(nmmaps$date)
nmmaps<-nmmaps[nmmaps$date>as.Date("1996-12-31"),]
nmmaps$year<-substring(nmmaps$date,1,4)
head(nmmaps)

g <- ggplot(nmmaps, aes(date, temp)) + 
        geom_point(color="firebrick") +
        theme_bw() +
        labs(x="Date", y=expression(paste("Temperature ( ", degree ~ F, " )")), title="Temperature") +
        theme(plot.title = element_text(size=20, face="bold", vjust=1, lineheight=1.2)) +
        theme(axis.text.x=element_text(angle=50, size=20, vjust=0.5)) +
        theme(
        axis.title.x = element_text(color="forestgreen", vjust=-0.35),
        axis.title.y = element_text(color="cadetblue" , vjust=0.35)) +  
        theme(panel.grid.major = element_line(size = 0.5, color = "grey"), 
                       axis.line = element_line(size = 0.7, color = "black"), 
                       legend.position = c(0.15, 0.7), 
                       text = element_text(size = 14))    
g

# Working with colour
g <- ggplot(nmmaps, aes(date, temp, color=factor(season)))+
        geom_point() + 
        theme_bw() +
        #theme(legend.title=element_blank()) +
        theme(legend.title = element_text(colour="chocolate", size=16, face="bold")) +
        scale_color_discrete(name="This color is\ncalled chocolate!?") +
        guides(colour = guide_legend(override.aes = list(size=4))) +
        theme(panel.grid.major = element_line(size = 0.5, color = "grey"), 
              axis.line = element_line(size = 0.7, color = "black"),  
              text = element_text(size = 14),
              legend.key = element_blank(),
              legend.key=element_rect(fill=NA))
        
g


#Multiple plots
g <- ggplot(nmmaps, aes(date,temp))+geom_point(color="aquamarine4")+facet_wrap(~year, nrow=1)
g
#or
g <- ggplot(nmmaps, aes(date,temp))+geom_point(color="chartreuse4")+
        facet_wrap(~year, ncol=2)
g

# Different themes

g <- ggplot(nmmaps, aes(date, temp, color=factor(season)))+
        geom_point()+ggtitle("This plot looks a lot different from the default")+
        theme_economist()+scale_colour_economist()
g

# More colours
g <- ggplot(nmmaps, aes(date, temp, color=factor(season)))+
        geom_point() + 
        scale_color_manual(values=c("dodgerblue4", "darkolivegreen4",
                                    "darkorchid3", "goldenrod1"))
g

g <- ggplot(nmmaps, aes(date, temp, color=factor(season)))+
        geom_point() + 
        scale_color_brewer(palette="Set1")
g

