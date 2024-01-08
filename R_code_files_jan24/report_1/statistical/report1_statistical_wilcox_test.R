data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_4_lps/report_4_lps.csv"

data <- read.csv(data_path)
head(data)


print('Wilcox Test on 4 control groups')
  
wilcox_result <- wilcox.test(cbind(data$LB_Control, data$SDB_Control, 
                                       data$MEB_Control, data$MEM_FBS_Control), 
                                 data = data)

print(wilcox_result)
