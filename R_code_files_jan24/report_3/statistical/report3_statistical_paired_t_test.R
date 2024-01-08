data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_5_virulence/report_5.csv"

data <- read.csv(data_path)

# Get column names
variable_names <- names(data)

# Perform paired t-tests for all combinations
for (i in 1:(length(variable_names) - 1)) {
  for (j in (i + 1):length(variable_names)) {
    cat("Paired t-test for", variable_names[i], "and", variable_names[j], ":\n")
    
    # Perform paired t-test
    t_test_result <- t.test(data[, i], data[, j], paired = TRUE)
    
    # Display the results
    print(t_test_result)
    cat("\n")
  }
}
