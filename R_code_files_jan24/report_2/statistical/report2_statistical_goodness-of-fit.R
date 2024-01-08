#install.packages("readxl")
library("readxl")
data_folder <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/Report-2-cirrhosis/statistical _analysis"
filename <- "/messy_cirrhosis.xlsx"
file_path <- paste0(data_folder, filename)
data <- read_excel(file_path) #read.table(file_path, header = TRUE, sep ='t')
head(data)

# Goodness-of-fit test
goodness_of_fit <- chisq.test(observed_counts, p = expected_proportions)
print(goodness_of_fit)