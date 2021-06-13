# MechaCar_Analysis

## Linear Regression to Predict MPG
*See image below for statistical summary references, or reference Challenge_summary_stats.txt*
### Non-random coefficients 
- vehicle length: p-value of 2.60e-12 
- ground clearance: p-value of 5.21e-08 

The above p-values indicate that there is an extremely miniscule probability that the mentioned coefficients' contribution of variance to the linear model are due merely to chance. In other words, both vehicle length and ground clearance show to have a significant impact on fuel efficiency (mpg).

### Slope of the Linear Model 
As the p-value of the entire regression analysis is 5.35e-11 - i.e below an assumed significance level of 0.05 - there is sufficient evidence to reject the null hypothesis and assume that the slope of this linear model is not equal to zero. 

### Predictability 
The given mutiple regression model has an r squared value of 0.71 meaning that roughly 71% of variability in mpg in MechaCars can be explained by this given model. This percentage is fairly good, however there are a few interesting points to note:
- An intercept value of 5.08e-08
    - This value is also below the significance level threshold and can be considered statistically significant. 
    - When an intercept is statistically significant, it means that there is significant variability in the dependent variable when all other independent variables equal 0. From here, one can assume that either certain variables need to be transformed to better represent variability in the data, or that there are other confounding variables impacting fuel efficiency (mpg) that are not included in this analysis. 

- a somewhat lack of signiifant variables
    -  only two significant variables out of five 
    -  indicates evidence of overfitting - i.e that the model performs well with the current data set, but may fail to generalize well for future predictability. 

In summary, the multiple regression model's p and r-sqaured values indicate there is statistical significance and sufficient predictability of the dependent variable in the model. However, with an intercept p-value that is also statistically significant and possibility of overfitting in the model, there is strong indication that a number of alterations can be made to the analysis to provide a more accurate representation of summary statistics - this would be a good look for future analysis. 

## Summary Statistics on Suspension Coils 

![summary_stats](https://user-images.githubusercontent.com/79600550/121824150-065f9000-cc78-11eb-83e7-8c940147f799.png)

![lot_stats](https://user-images.githubusercontent.com/79600550/121824147-02337280-cc78-11eb-9288-f02702f366f6.png)




