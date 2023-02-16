# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG

![MechaCar_regression](https://github.com/skyeryser/MechaCar_Statistical_Analysis/blob/main/Photos/MechaCar_regression.png)

- The intercept, vehicle length, and ground clearance all provide a non-random amount of variance to the mpg values in the data. In simpler terms, these variables have an impact on miles-per-gallon for MechaCars. 
- There is sufficient evidence to reject our null-hypothesis. The slope of the regression is positive because the p-value is 5.35e-11.
- This linear model predicts the mpg of MechaCar prototypes fairly effectively even though it has a low p-value of 5.35e-11 which is beneth the .05 threshold. The R squared value of 0.7149 shows that the regression model describes the dataset 71% of the time, and supports the conclusion that there is a relationship between the dependant and independant variables in the data.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

![total_summary](https://github.com/skyeryser/MechaCar_Statistical_Analysis/blob/main/Photos/total_summary.png)

When looking at the total summary of all three lots combined, the overall variance is 62.29 which indicates that the manufacturer is meeting its design specifications of less than 100 pounds per square inch. 

![lot_summary](https://github.com/skyeryser/MechaCar_Statistical_Analysis/blob/main/Photos/lot_summary.png)

However, when looking at each of the three lots separately, it appears that lot three has a variance of 170.29 which is more than 70 pounds above specification. Lots one and two have variances of .98 and 7.47 pounds respectively, both landing within an 'acceptable' range of variance. Based on this individual test, it is clear that while the overall summary shows all three lots combined are within manufacturing specifications, lot three is an outlier and the coils within this lot should not be used in production. 

## T-Tests on Suspension Coils
The following T-Tests are used to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. 

![total_ttest](https://github.com/skyeryser/MechaCar_Statistical_Analysis/blob/main/Photos/total_ttest.png)

First, given a total summary of all lots combined, the p-value is 0.06028 which is higher than the assumed significance level of 0.05. Based on this p-value, there is not enough evidence to reject the null hypothesis.

![lot_one](https://github.com/skyeryser/MechaCar_Statistical_Analysis/blob/main/Photos/lot_one.png)

The t-test of lot one shows a p-value of 1 which is more than twice the assumed significance level of 0.05. The mean PSI of this particular lot is in line with the population mean.

![lot_two](https://github.com/skyeryser/MechaCar_Statistical_Analysis/blob/main/Photos/lot_two.png)

Like lot one, lot two is has significance level of 0.6072 and is not sufficient evidence to reject the null hypothesis. In other words, the average suspension coil PSI in this lot is 500 pounds per square inch.

![lot_three](https://github.com/skyeryser/MechaCar_Statistical_Analysis/blob/main/Photos/lot_three.png)

Lot three has a p-value of 0.04168. This significance level is below 0.05 and is enough evidence to reject the null hypothesis. The PSI for lot 3 is not 500 pounds per square inch.

## Study Design: MechaCar vs Competition
As the world's oil reserves are slowly diminshing in output, MechaCar consumers are interested in purchasing cars that have greater highway fuel efficiency. If MechaCar wants to maintain its competitive edge as a car manufacturer, the company must produce cars that meet or outperform the fuel efficiency of other brands. 

In order to ensure that MechaCar is meeting these stringent standards, the company has designed an internal study of the higheway fuel efficiency of all of its products. The null hypothesis is that there is no significant difference between the average highway fuel efficiency of a MechaCar versus the average efficiency of another manufacturer. The alternative hypothesis is that there is a significant difference. In order to do the test, MechaCar will implement a one sample t-test to see if the mean from the sample of MechaCar data is statistically different from the mean fuel efficiency of the other cars on the market. The data that MechaCar will use to perform this test is the miles per gallon (mpg) measurements that it has collected for three manufacturing lots of vehicles. This sample data will be compared to the mpg data of the population of other vehicles on the market.

