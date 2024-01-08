# install.packages("goftest")
library(goftest)

data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_5_virulence/report_5.csv"

data <- read.csv(data_path)

ad_test_results <- sapply(data, function(x) ad.test(x)$p.value)

# Display the results
ad_test_results

