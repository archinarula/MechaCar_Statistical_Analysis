# Written Analysis of the MechaCar Statistical Analysis challenge Module 15

## Overview of Analysis
This project purpose is to use R programming language and perform statistical analysis and hypothesis testing to analyze a series of automative datasets to provide insights for decision makers. 

Data Source: 
![Mechacar_mpg.csv](https://github.com/archinarula/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) and 
![Suspension_Coil.csv](https://github.com/archinarula/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) 

## Deliverable: 
This challenge consists of three technical analysis deliverables and a written report to present results. 

- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition


## Results

The results are displayed on R Script
https://github.com/archinarula/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R

Key findings and highlights of this analysis is:

1. Deliverable 1: Linear Regression to Predict MPG

As shown in image, the Pr(>|t|) represents the probability each coefficient contributes to variance in linear regression model. Per our results the Intercept, vehicle_length and ground_clearance provide a non-random amount of variance to linear model of MPG.

Our multi-linear model is:
mpg= 6.267e+00 *vehicle_length + 1.245e-03*vehicle_weight + 6.877e-02*spoiler_angle -3.411e+00*AWD + 3.546e+00*ground_clearance-1.040e+02

The slope of linear model is not considered to be zero because p-Value is 5.35e-11 which is smaller than the assumed significance level of 0.05% therefor there is sufficient evidence to reject the null hypotheis

R-square is 0.7149 so approx 71% (adjusted 68%) of variations in mpg can be explained by changes in vehicle length, wieght, spoiler angle, AWD and ground clearance hence this model is a fairly good model to predict mpg of MechaCar protypes effectively

2. Deliverable 2: Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. As shown in the image, the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually because overall variance is 62.3 pounds per inch which is within the specifications. 
Also at Lot level the Mean and median are almost same so dataset appears to be normally/symetrically distributed and has zero skewness. The overall standard deviation of 7.89 indicates data points are spread over large range of values.

3.Deliverable 3: T-Test on Suspension Coils

As shown in the image, the t-Test results for sample table (random 50 data points) p-value (0.4844) is higher than the estimated significance level (0.05) hence we dont have enough evidence to reject the null hypothesis and we can conclude that data is normally distributed and the two means are statistically similar

At Lot levels for Lot 1 (p-value 6.529e-07) and Lot 2 (p-Value 0.002857) is lower than the estimated significance level (0.05) hence we can reject the null hypothesis and we can conclude that the two means are statistically different for these two Lots

At Lot levels for Lot 3 (p-value 0.2995) is higher than the estimated significance level (0.05) hence we dont have enough evidence to reject the null hypothesis and we can conclude that the two means are statistically similar

4. Deliverable 4: Design a Study Comparing the MechaCar to the Competition

We can compare the MechaCar prototype performance against the competition vehicles by performaing statistical aanlysis on metrics such as
- cost, 
- city or highway fuel efficiency, 
- horse power, 
- maintenance cost, 
- safety rating,
- braking distance,
- Color options,
- features in trim-levels

Null hypothesis can be 'Each performace metrics is statistically same and other manufacturer vehicle' and the alternate hypothesis can be 'Performace metrics is statistically different than other manufacturer vehicle'

Statistical testing to be used to make the comparison would be the ANOVA test as this test is used to compare means of a continous numerical variable across different groups and can help to compare the means for each performance metrics between MechaCar protype vs other vehical manufacturer

Data needed would be car data for MechaCar vehicles and the shortlisted vehicle manufactures. The data would be gathered under a single dataframe with each performance metrics being a separate column. Possible there can be some public APIs for car industries that can be leveraged to get the base datasets. 




 



