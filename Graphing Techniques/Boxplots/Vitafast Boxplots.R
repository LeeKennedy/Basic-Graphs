data1 <- read.csv("vitafastb12.csv", as.is=TRUE, header = TRUE)
#data <- sapply(data1, as.numeric)
boxplot(data,
        horizontal = FALSE,
        range = 1, # 1 displays outliers
#        las = 1, #horizontal labels
#        notch = TRUE, #indicates uncertainty of median
#        ylim = c(1,2),
#        xlim = c(0,100),
        col = c("white","lightblue"),
        border = c("black", "blue"),
#        boxwex = 0.5, # width of box as proportion of original
        whisklty = 1, # 1 = solid line
        staplelty = 1,# end type, 0 = none
#        outpch = 16, # symbol for outliers, 16 = filled circle
        outcol = "black", # colour of outliers
        main = "Vitamin B12 (IF)",
        ylab = "µg/100g",
        #        ylim = c(10,100) 
)