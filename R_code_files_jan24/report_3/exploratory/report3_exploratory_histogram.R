data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_5_virulence/report_5.csv"

data <- read.csv(data_path)

# install.packages("ggplot2")
library(ggplot2)

# Create histograms for each variable
par(mfrow = c(2, 2))  # Set up a 2x2 layout for four histograms

for (col in colnames(data)) {
  hist(data[[col]], main = paste("Histogram for", col), xlab = col, col = "lightblue", border = "black")
}
