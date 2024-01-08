install.packages("ggplot2")
library(ggplot2)
library(tidyr)
library(gplots)


data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_4_lps/report_4_lps.csv"

data <- read.csv(data_path)

heatmap_data <- as.matrix(data)
heatmap.2(heatmap_data, 
          Rowv = FALSE, Colv = FALSE,  
          dendrogram = "none",      
          col = cm.colors(256),    
          scale = "column",         
          key = TRUE,                 
          key.title = "Value",      
          density.info = "none",    
          trace = "none",           
          margins = c(5, 10),        
          main = "Heatmap of the Media Groups")  