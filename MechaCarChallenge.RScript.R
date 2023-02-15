library(dplyr)
require(ggplot2)

# Part 1
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)) #generate summary statistics

plt <- ggplot(mpg_table,aes(x=vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,y=mpg)) #import dataset into ggplot2

# Part 2
# Create suspension coil table
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total summary table
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create lot summary table
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Part 3
# All lots
t.test(suspension_coil_table$PSI,mu=1500)

# Lot one
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

# Lot two
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

# Lot three
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)