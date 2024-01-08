install.packages("tidyverse")
library(ggplot2)
library(tidyr)
library(gplots)
library(ggridges)
library(tidyverse)


data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_4_lps/report_4_lps.csv"

data <- read.csv(data_path)


data_long <- data %>%
  pivot_longer(cols = everything(), names_to = "Variable", values_to = "Value")

# Create ridgeline plots
p <- ggplot(data_long, aes(x = Value, y = Variable, fill = Variable)) +
  geom_density_ridges(alpha = 0.7, scale = 3) +
  scale_fill_viridis_d() +
  theme_ridges() +
  theme_minimal() +
  labs(title = "Ridgeline Plots for All Media Groups")


print(p)
