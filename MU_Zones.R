

this_base <- "fig03-02_area-and-volume-judgments" 

set.seed(1)
dd = data.frame(x = 1:5, eps_x = rnorm(5, 0, 0.1), y = rnorm(5), eps_y = rnorm(5, 0, 0.1))

##Save space later    
dd$xmin = dd$x - dd$eps_x
dd$xmax = dd$x + dd$eps_x
dd$ymin = dd$y - dd$eps_y
dd$ymax = dd$y + dd$eps_y
#Then use the rectangle geom in ggplot2:
        
library(ggplot2)
p <- ggplot(dd) + 
        geom_rect(aes( xmax = xmax, xmin=xmin, ymin=ymin, ymax = ymax),
                  colour="grey50", fill="grey90") +
        geom_point(aes(x=dd$x, y = dd$y), colour="black", shape = 20, size = 3) +
        ggtitle("Fig 3.2 Area and Volume Judgments") +
        theme_bw() +
        theme(panel.grid.major = element_blank(),
              plot.title = element_text(size = rel(1.5), face = "bold", vjust = 1.5),
              axis.title = element_blank())
p
ggsave(paste0(this_base, ".png"), 
       p, width = 6, height = 5)