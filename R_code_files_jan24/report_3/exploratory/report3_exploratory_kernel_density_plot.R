data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_5_virulence/report_5.csv"

data <- read.csv(data_path)

# Create Kernel Density Plots for each variable
par(mfrow = c(2, 2))  # Set up a 2x2 layout for four plots

for (col in colnames(data)) {
  density_plot <- density(data[[col]])
  plot(density_plot, main = paste("Kernel Density Plot for", col), col = "blue", lwd = 2, xlab = col)
}