#install.packages("readxl")
library("readxl")
data_folder <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/Report-2-cirrhosis/statistical _analysis"
filename <- "/messy_cirrhosis.xlsx"
file_path <- paste0(data_folder, filename)
data <- read_excel(file_path) #read.table(file_path, header = TRUE, sep ='t')
head(data)

# Install and load the FrF2 package
install.packages("FrF2")
library(FrF2)

# Define factors and levels
factors <- c("Cirrhosis_Type", "Sex")
levels <- c(3, 2)  # Number of levels for each factor

# Generate a fractional factorial design
design <- FrF2(nfactors = length(factors), factors = factors, nlevels 
               
# Install the pwr package
install.packages("pwr")
               
# Load the pwr package
library(pwr)
               
# Set parameters
effect_size <- 0.5  # Moderate effect size
alpha <- 0.05  # Significance level
power <- 0.8  # Desired power
               
# Calculate sample size for a two-sample t-test
n <- pwr.t.test(d = effect_size, sig.level = alpha, power = power)$n
               
# Print the sample size
print(n)
               
# Calculate power for a two-sample t-test
calculated_power <- pwr.t.test(d = effect_size, n = n, sig.level = alpha)$power
               
# Print the calculated power
print(calculated_power)