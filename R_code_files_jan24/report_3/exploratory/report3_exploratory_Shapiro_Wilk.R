data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_5_virulence/report_5.csv"

data <- read.csv(data_path)

# install.packages("ggplot2")
library(ggplot2)

# Perform Shapiro-Wilk test for each variable
shapiro_test_results <- sapply(data, function(x) shapiro.test(x)$p.value)

# Create a dot plot
shapiro_dot_plot <- ggplot(data.frame(variable = names(shapiro_test_results), p_value = shapiro_test_results), aes(x = variable, y = p_value)) +
  geom_point(size = 3, color = "blue") +
  geom_hline(yintercept = 0.05, linetype = "dashed", color = "red") +  # Add a horizontal line at significance level 0.05
  labs(title = "Shapiro-Wilk Test Results", x = "Variable", y = "p-value") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Print the dot plot
print(shapiro_dot_plot)