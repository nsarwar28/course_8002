install.packages("ggplot2")
library(ggplot2)
library(tidyr)


data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_4_lps/report_4_lps.csv"

data <- read.csv(data_path)

# Specify colors for each variable
color_palette <- c(LB_Control = "orange", 
                   SDB_Control = "orange",  
                   MEB_Control = "orange", 
                   MEM_FBS_Control = "orange",
                   AFsn_in_LB = "blue", 
                   Afsn_in_SDB = "blue", 
                   Afsn_in_MEB = "blue", 
                   Afsn_in_MEM_FBS = "blue")

# Reshape the data for ggplot2
data_reshaped <- gather(data, key = "Variable", value = "Value")

data_reshaped$Group <- ifelse(grepl("LB", data_reshaped$Variable), "LB", 
                          ifelse(grepl("SDB", data_reshaped$Variable), "SDB",
                                 ifelse(grepl("MEB", data_reshaped$Variable), "MEB", "MEM_FBS")))


ggplot(data_reshaped, aes(x = Group, y = Value, fill = Variable)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.8), width = 0.7) +
  scale_fill_manual(values = color_palette) +
  labs(title = "Grouped Bar Chart for Controlled vs Treated",
       x = "Media Group",
       y = "O.D Value",
       fill = "Variable") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  