library(car)

A <- c(2, 4, 6, 8, 10, 11, 11, 11, 12, 10, 12, 14)
B <- c(3, 5, 5, 7.5, 10.5,11.1, 10.9, 11.3, 11.8, 9.9, 12.2, 13.5)

dataEllipse(A, B, 
            levels = 0.95, 
            fill = FALSE, 
            xlim = c(0,30), 
            ylim = c(0,30), 
            pch = 19, 
            col = c("#00000080", "orange"), 
            center.pch = FALSE)
