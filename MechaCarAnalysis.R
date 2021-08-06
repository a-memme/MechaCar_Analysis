# Import dplyr library
library(dplyr)

# Deliverable 1 - Linear Regression to Predict MPG
# Import and read csv file into dataframe
df<- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform multiple linear regression
multiple_regress <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +	
   AWD, data=df)
# Get summary 
summary(multiple_regress)


# Deliverable 2 - Summary Stats on Suspension Coils  
# Import and read csv file into dataframe
suspension <-read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Summarize mean, median, variance, and std dev of PSI column in a new dataframe
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                              Variance=var(PSI), SD=sd(PSI), .groups='keep')
# Group by lot number and summarize mean, median, variance, and std dev of PSI column in a new df
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                                                        Variance=var(PSI), SD=sd(PSI), .groups='keep')


# Deliverable 3 - T-test analysis 
# Visualize distribution
plt <- ggplot(suspension, aes(x=PSI))
plt + geom_density()

# Perform One-sample t-test
t.test(suspension$PSI,mu=1500)

#Create new tables for each lot group
lot_1 <- subset(suspension, Manufacturing_Lot=='Lot1')
lot_2 <- subset(suspension, Manufacturing_Lot=='Lot2')
lot_3 <- subset(suspension, Manufacturing_Lot=='Lot3')
#Visualize distributions 
#Lot1
plt <- ggplot(lot_1, aes(x=PSI))
plt + geom_density()
#Lot2
plt <- ggplot(lot_2, aes(x=PSI))
plt + geom_density()
#Lot3
plt <- ggplot(lot_3, aes(x=PSI))
plt + geom_density()

# One-tailed t-tests for each lot group
t.test(lot_1$PSI,mu=1500)
t.test(lot_2$PSI,mu=1500)
t.test(lot_3$PSI,mu=1500)



