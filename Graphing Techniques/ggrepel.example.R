library(ggrepel)
library(ggplot2)
set.seed(42)

ggplot(mtcars) +
        geom_point(aes(wt, mpg), color = 'red') +
        geom_text_repel(aes(wt, mpg, label = rownames(mtcars))) +
        theme_classic(base_size = 16)