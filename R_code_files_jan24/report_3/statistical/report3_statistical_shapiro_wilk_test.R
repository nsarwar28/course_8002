data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_5_virulence/report_5.csv"

data <- read.csv(data_path)

shapiro_test_results <- sapply(data, function(x) shapiro.test(x)$p.value)

# Display the results
print(shapiro_test_results)
