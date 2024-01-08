#install.packages("readxl")
library("readxl")
data_folder <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/Report-2-cirrhosis/statistical _analysis"
filename <- "/messy_cirrhosis.xlsx"
file_path <- paste0(data_folder, filename)
data <- read_excel(file_path) #read.table(file_path, header = TRUE, sep ='t')
head(data)

# Creating a contingency table for Fisher's exact test
contingency_table <- table(data$Cirrhosis_Type, data$under18_not_survived_to_transplant)

print(contingency_table)

fisher_test_result <- fisher.test(contingency_table)
print(fisher_test_result)
