# MechaCar_Statistical_Analysis
R
## Overview
The purpose of this analysis is to help the data analytics team to review the production data for insights that may help the manufacturing team with the new car model; MechaCar
## Linear Regression to Predict MPG

> lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = mecha_car_mpg)

Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02  
ground_clearance               AWD  
       3.546e+00        -3.411e+00 
       
Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = mecha_car_mpg)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11      



## Summary Statistics on Suspension Coils

  ![image](https://user-images.githubusercontent.com/96274446/163299845-7592727b-fe3b-4626-9bad-1cdf7e5f9ce9.png)

  ![image](https://user-images.githubusercontent.com/96274446/163299684-ca76c261-8365-48b2-a802-0e99165d34f0.png)
As we can see from the above, the current manufacturing data meets the 100 PSI (pounds per square inch) variance limitation and the design specifications for all the lots in total. However, when separated by Lots, LOT 3 is showing a higher variance which might because the lots are not specific, they are chosen randomly. 
  
## T-Tests on Suspension Coils
>   t.test(susp_coil$PSI, mu = 1500)
	One Sample t-test

data:  susp_coil$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78
 
 
 ## Study Design: MechaCar vs Competition
 Another statistical study would be doing a linear regression on hybrid cars. With the popularity increasing and the rise of gas prices, it will be beneficial perform this especially in "expensive" cities likes San Francisco or Seatle. 

