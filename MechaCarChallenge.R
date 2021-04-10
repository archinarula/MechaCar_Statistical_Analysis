######import dependencies#####

library(tidyverse) #import tidyverse package

##### DELIVERABLE 1

# Read CSV#
mechaCarData <- read_csv("MechaCar_mpg.csv") #import MechaCar data
head(mechaCarData) #display first rows of imported data

#Perform Linear Regression #
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData)) #generate summary statistics


##### DELIVERABLE 2

# Read CSV#
suspension_coil_data <- read_csv("Suspension_Coil.csv") #import suspension coil data
head(suspension_coil_data)

#total summary dataframe #
total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total summary table
total_summary

#lot summary dataframe #
lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
lot_summary



