data_folder <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/Report-2-cirrhosis/exploratory_analysis"
filename <- "/messy_cirrhosis.xlsx"
file_path <- paste0(data_folder, filename)
data <- read_excel(file_path) #read.table(file_path, header = TRUE, sep ='t')
head(data)

# Load the ggplot2 library
library(ggplot2)

# Reshape the data for plotting
library(tidyr)
data_long <- pivot_longer(data, cols = starts_with("under18"), names_to = "Age_Survived", values_to = "Count")

# Create a grouped bar chart
ggplot(data_long, aes(x = interaction(Cirrhosis_Type, Sex), y = Count, fill = Age_Survived)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(title = "Grouped Bar Chart of Transplant Survival by Cirrhosis Type and Sex",
       x = "Cirrhosis Type and Sex", y = "Count",
       fill = "Survival Status") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
