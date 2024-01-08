data_path <- "/Users/natasha/Documents/r_codes_stats_assignment_jan_24/report_4_lps/report_4_lps.csv"

data <- read.csv(data_path)
head(data)

invisible({
print('ANOVA Test on control vs Treated values of different medias')
  
print('Media : LB')
anova_model <- aov(LB_Control ~ AFsn_in_LB, data = data)
print(summary(anova_model))

print('Media : SDB')
anova_model <- aov(SDB_Control ~ Afsn_in_SDB, data = data)
print(summary(anova_model))


print('Media : MEB')
anova_model <- aov(MEB_Control ~ Afsn_in_MEB, data = data)
print(summary(anova_model))
})