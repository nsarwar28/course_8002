install.packages("goftest")

library("goftest")
data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_4_lps/report_4_lps.csv"

data <- read.csv(data_path)
head(data)

class(data$LB_Control)


invisible({
print('Cramer--von Mises on LB_Control group')
  
cvm_result <- cvm.test(data$LB_Control, "pnorm", mean = mean(data$LB_Control), 
                       sd = sd(data$LB_Control))

print(cvm_result)


print('Cramer--von Mises on SDB_Control group')

cvm_result <- cvm.test(data$SDB_Control, "pnorm", mean = mean(data$SDB_Control), 
                       sd = sd(data$SDB_Control))

print(cvm_result)

})
