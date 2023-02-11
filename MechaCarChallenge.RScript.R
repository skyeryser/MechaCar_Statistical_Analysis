library(dplyr)
require(ggplot2)

mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)) #generate summary statistics

plt <- ggplot(mpg_table,aes(x=vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,y=mpg)) #import dataset into ggplot2

