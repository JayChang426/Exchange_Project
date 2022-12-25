setwd("/Users/changjay/Desktop/教育部交換自述/Project")
getwd()

rm(list=ls()) # 清空變數
# install.packages("devtools") # Install the development version from GitHub:
devtools::install_github("R-CoderDotCom/econocharts")

library(econocharts)

# install.packages("ggplot2")
library(ggplot2)

sdcurve()

demand1 <- data.frame(Hmisc::bezier(c(1, 3, 9),
                                    c(9, 3, 1))) 

supply1 <- data.frame(Hmisc::bezier(c(1, 8, 9),
                                    c(1, 5, 9))) 

supply2 <- data.frame(Hmisc::bezier(c(4, 11, 12),
                                    c(1, 5, 9))) 


# Supply and demand curves and arrows
sdcurve(demand1, supply1, demand1, supply2,
        names = c("D", "S[tariffed]","D", "S")) + 
  annotate("text", x = 0, y = 1.45, colour = "black", label = "··································································································") + 
  annotate("text", x = 2.5, y = 2.75, label = "A") + 
  annotate("text", x = 5, y = 2.75, label = "B") + 
  annotate("text", x = 2.5, y = 1.9, label = "C") + 
  annotate("text", x = 5, y = 1.9, label = "D") + 
  annotate("segment", x = 7.5, xend = 7.5, y = 4, yend = 5,               
           arrow = arrow(length = unit(0.3, "lines")), colour = "grey50")


demand1 <- data.frame(Hmisc::bezier(c(1, 3, 9),
                                    c(9, 3, 1))) 

supply1 <- data.frame(Hmisc::bezier(c(1, 8, 9),
                                    c(3, 3, 3))) 

supply2 <- data.frame(Hmisc::bezier(c(1, 8, 9),
                                    c(7, 7, 7))) 
sdcurve(demand1, supply1, demand1, supply2,
        names = c("D", "S","D", "S[tariffed]")) + 
  annotate("text", x = 1, y = 4, label = "A") + 
  annotate("text", x = 3, y = 4, label = "B") + 
  annotate("segment", x = 6, xend = 6, y = 4.5, yend = 5.5,               
           arrow = arrow(length = unit(0.3, "lines")), colour = "grey50")











