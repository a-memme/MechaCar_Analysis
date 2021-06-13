# Import dplyr library
library(dplyr)

# MechaCar dataset
# Import and read csv file into dataframe
df<- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform multiple linear regression
multiple_regress <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +	
   AWD, data=df)
# Get summary 
summary(multiple_regress)

# Suspension_Coil dataset 

# Import and read csv file into dataframe
suspension <-read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
# Summarize mean, median, variance, and std dev of PSI column in a new dataframe
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                              Variance=var(PSI), SD=sd(PSI), .groups='keep')
# Group by lot number and summarize mean, median, variance, and std dev of PSI column in a new df
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                                                        Variance=var(PSI), SD=sd(PSI), .groups='keep')



