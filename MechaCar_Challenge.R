# Import Any Libraries that May be Needed
library(easypackages)
libraries("tidyr", "dplyr", "ggplot2", "readxl")
library(readr)


# ~~Deliverable 1: Linear Regression Analysis on Miles Per Gallon (MPG) Using 6 Variables 
MechaCar_mpg <- read_csv("MechaCar_mpg.csv", show_col_types = FALSE)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))
summary(MechaCar_mpg)

# Statistical Summary of the Linear Regression Model with the Intended p-values
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg) %>% summary()



# ~~Deliverable 2: Suspension Coil Summary
suspensionCoil <- read.csv("Suspension_coil.csv",check.names = F,stringsAsFactors = F) 

# total_summary will yield the mean, median, variance, Std Dev, and number of the suspension coil’s PSI column.
total_summary <- suspensionCoil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 


# lot_summary will use the group_by() and the summarize() functions to look at each manufacturing lot.                                                                
lot_summary <- suspensionCoil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')                                      

# Box Plot - PSI for All Lots
plt1 <- ggplot(suspensionCoil,aes(y=PSI)) 
plt1 + geom_boxplot() 

# Box Plot: PSI for Individual Lots
plt2 <- ggplot(suspensionCoil,aes(x=Manufacturing_Lot,y=PSI))
plt2 + geom_boxplot()



# ~~Deliverable 3: t-Test 
# See if all lots are statistically different from the population mean of 1500
t.test(suspensionCoil$PSI,mu=1500)

# See if individual lot subsets differ from population mean of 1500
lot1 <- subset(suspensionCoil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspensionCoil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspensionCoil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)