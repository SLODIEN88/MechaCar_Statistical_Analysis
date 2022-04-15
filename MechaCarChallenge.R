### Deliverable 1 ###
# Import the data
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
### Deliverable 2 ###
# Import the data
susp_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# Create a Summary DF
total_summary <- susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# Create a Summary DF grouped by Manufacturing lot
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))
### Deliverable 3
# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(susp_coil$PSI, mu = 1500)
# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 = subset(susp_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(susp_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(susp_coil, Manufacturing_Lot == 'Lot3')
?t.test()
t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168
t.test(Lot3$PSI, mu = 1500)
