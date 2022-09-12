# MechaCar Statistical Analysis  :racing_car:

## **Deliverable 1:** Linear Regression to Predict MPG
###
•	Aside from the intercept, which is not typically interpreted, the amount of variance in MPG is accounted for significantly by the vehicle length and vehicle ground clearance variables.  Those p-values are below 0.05, which means that it is not likely due to chance.  In contrast, the vehicle weight, spoiler angle, and all-wheel-drive (AWD) have p-values above 0.05, which would indicate a more random amount of variance in the dataset.

•	The slope of the linear model is not considered to be zero because there is a significant linear relationship between the independent variable and the dependent variable.

•	This linear model predicts MPG of MechaCar prototypes effectively.  The multiple R-squared value is 0.7149, which represents a strong model.

•	Although the non-significant variables could be dropped out of the model, the equation would be: 
- MPG = (6.267)vehicle_length + (0.001245)vehicle_weight + (0.06877)spoiler_angle + (3.546)ground_clearance – (3.411)AWD – 104.

•	(The intercept is -104). 


## **Deliverable 2:** Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## **Deliverable 3:** T-Test on Suspension Coils
- Summarize the interpretation and findings for the t-test results with screenshots of the t-test.


## **Deliverable 4:** Design a Study Comparing the MechaCar to the Competition


### Study Design: MechaCar vs Competition

•	I would define a lemon car as one that has more than one recall in a singular year, and then use the number of recalls in the past year as the metric in a future quality assurance study.  The study would examine the top 10 sedan car models put out by MechaCar vs. 5 other competitors’ models (each competitor would have their top 10 comparable sedan models from the year 2022), and evaluate whether there are any statistically significant differences between the means of the independent groups.  Therefore, there would be a total of 60 sedan records.

•	The null hypothesis is that there are no significant differences between the MechaCar recalls and the 5 other competitors’ recalls.  The alternative hypothesis is that MechaCar has significantly fewer recalls than all of its competitors. 

•	The statistical test used to test this hypothesis would be the ANOVA because it involves a means test, and there is only one outcome variable (recalls) and multiple competitors.

•	I would use recent recall data (the number of recalls in the past year) from the 60 sedans to create the sample.  The data would come from the public recall data of the National Highway Traffic Safety Administration.  
