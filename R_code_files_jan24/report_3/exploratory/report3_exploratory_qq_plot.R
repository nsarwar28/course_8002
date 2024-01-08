data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_5_virulence/report_5.csv"

data <- read.csv(data_path)

# Create Q-Q plots for each variable
par(mfrow = c(2, 2))  # Set up a 2x2 layout for four Q-Q plots

for (col in colnames(data)) {
  qqnorm(data[[col]], main = paste("Q-Q Plot for", col))
  qqline(data[[col]])
}