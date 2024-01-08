#install.packages("readxl")
library(ggplot2)
library("readxl")
data_folder <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/Report-2-cirrhosis/exploratory_analysis"
filename <- "/messy_cirrhosis.xlsx"
file_path <- paste0(data_folder, filename)
data <- read_excel(file_path) #read.table(file_path, header = TRUE, sep ='t')
head(data)


# Reshape the data for plotting
library(tidyr)
data_long <- pivot_longer(data, cols = starts_with("under18"), names_to = "Age_Survived", values_to = "Count")
head(data_long)


# Create a grouped box plot
ggplot(data_long, aes(x = Cirrhosis_Type, y = Count, fill = Sex)) +
  geom_boxplot(position = position_dodge(width = 0.8), color = "black") +
  facet_wrap(~Age_Survived, scales = "free_y") +
  labs(title = "Grouped Box Plot of Transplant Survival by Cirrhosis Type and Sex",
       x = "Cirrhosis_Type", y = "Count") +
  theme_minimal()