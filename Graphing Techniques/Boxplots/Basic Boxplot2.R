## Select data entry route (Ctl-Shift-C):
## Change file name as required.

data <- rnorm(100, 25,3)
# data<-read.delim('clipboard', header = FALSE)
data <- sapply(data, as.numeric)
boxplot(data,
        horizontal = TRUE,
        range = 1, # 1 displays outliers
        las = 1, #horizontal labels
#        notch = TRUE, #indicates uncertainty of median
#        ylim = c(1,2),
#        xlim = c(0,100),
#       col = "grey",
#        boxwex = 0.5, # width of box as proportion of original
        whisklty = 1, # 1 = solid line
        staplelty = 1,# end type, 0 = none
        outpch = 16, # symbol for outliers, 16 = filled circle
        outcol = "red", # colour of outliers
        main = "Title",
        xlab = "subtitle")
#        ylim = c(10,100) 
