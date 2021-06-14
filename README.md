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

- a lack of significant variables
    -  only two significant variables out of five 
    -  indicates evidence of overfitting - i.e that the model performs well with the current data set, but may fail to generalize well for future predictability. 

In summary, the multiple regression model's p and r-sqaured values indicate there is statistical significance and sufficient predictability of the dependent variable in the model. However, with an intercept p-value that is also statistically significant and possibility of overfitting in the model, there is strong indication that a number of alterations can be made to the analysis to provide a more accurate representation of summary statistics - this would be a good look for future analysis. 

## Summary Statistics on Suspension Coils 
### Total Summary
![summary_stats](https://user-images.githubusercontent.com/79600550/121824150-065f9000-cc78-11eb-83e7-8c940147f799.png)

### Lot Summary
![lot_stats](https://user-images.githubusercontent.com/79600550/121824147-02337280-cc78-11eb-9288-f02702f366f6.png)

Based on the tables above, the current manufacturing data meets the design specification of suspension coils not exceeding 100 pounds per square inch for the entire set, however, it does not meet this requirement when isolating for cars on lot 3. A potential explanation for this could be that the cars on lot 3 - acting as a sample of all existing mecha cars - are not statistically representative of the entire population. Although the other two lots meet the PSI requirement, there is still possibility that these sample sizes (i.e number of cars on each lot) aren't large enough and thus, are insufficiently reliable in representing the entire population of cars. 


## T-Tests on Suspension Coils 
* See images or reference Challenge_summary_stats.txt*
### Total Summary
![total_summarystats](https://user-images.githubusercontent.com/79600550/121824333-7d495880-cc79-11eb-835a-bfd19fe0d54b.png)

When compared to the population mean, the PSI of cars on all lots renders a p-value of 0.06 and therefore is not considered statistically significant. This means that there is reason to believe that any variability in the data is due to random chance, and that the sample can be considered representative of the population. The distribution was also visualized below to ensure its normaility and hence, t-test accuracy.

![PSI_visualization](https://user-images.githubusercontent.com/79600550/121824436-2bed9900-cc7a-11eb-8dd9-3d4b27aa9520.png)


### Lot 1
![lot1_summary](https://user-images.githubusercontent.com/79600550/121824462-50e20c00-cc7a-11eb-9369-7521adbfc70c.png)

When compared to the population mean, the PSI of cars on lot 1 renders a p-value of 1.0 and therefore is not considered statistically significant. Here, the above sample can also be considered representative of the population. The distribution is visualized below.

![lot1_visualization](https://user-images.githubusercontent.com/79600550/121824506-aa4a3b00-cc7a-11eb-8c6f-9aab2a17b305.png)

### Lot 2
![lot2_summary](https://user-images.githubusercontent.com/79600550/121824541-df568d80-cc7a-11eb-8fd9-ea0a8cdaecc2.png)

When compared to the population mean, the PSI of cars on lot 2 renders a p-value of 0.60 and therefore is not considered statistically significant. Here, the above sample can also be considered representative of the population. The distribution is visualized below.

![lot2_visualization](https://user-images.githubusercontent.com/79600550/121824583-29d80a00-cc7b-11eb-85ea-e7e5b56b3e35.png)

### Lot 3
![lot3_summary](https://user-images.githubusercontent.com/79600550/121824609-6441a700-cc7b-11eb-967e-2a8330fcc4ad.png)

When compared to the population mean, the PSI of cars on lot 3 render a p-value of 0.04 and therefore can be considered statistically significant, assuming a significance level of 0.05. This means that there is reason to believe that variability in the data is not due to random chance - i.e that their differences are statistically significant - and hence, this specific sample cannot be considered accurately representative of the overall population. The normality of the distribution is visualized below.

![lot3_visualize](https://user-images.githubusercontent.com/79600550/121824691-05c8f880-cc7c-11eb-8d8c-8193a7b947e2.png)

## Study Design: MechaCar vs Competition 
A small and simple statistical study that can quantify performance against competitive car brands could be to simply measure the relationship between car fuel effiency and type of car brand. Here, we can piggy-back off the fuel efficiency interest in the original analysis, and see whether there is a statistically significant difference in fuel efficiency when analyzing across different car manufacturers. If MechaCar is truley considered a fuel efficient car, then the statistical analysis will render as significant, and hence indicatet that there is true value in choosing it over competitors based on fuel efficient benefits. 

- metrics: avg mpg for similar car styles (i.e trucks, sedans, sports cars, etc.)
- null hypothesis: Variation in fuel efficiency across different car brands is not staistically significant.
- alternative hypothesis: Variation in fuel efficiency across different car brands is statistically significant.
- statistical test: ANOVA - analysis of variance is the fitting statistical test used when comparing means across a number of groups, which is what is proposed here. A one-way ANOVA would be used as there is one dependent variable (fuel efficiency) and one independent variable (car manufacturer). 
- data: data needed would be avg mpg for each car manufacturer, controlling for car type. That is, data could be collected for avg mpg in sedans across a number of different car manufacturers. Note - a simple bar chart as an initial visualization here would be helpful to very clearly and simply display where each car manufacturer is situated in their respective mpg levels. From here, statistical tests are performed to determine significance, and once proven/disproven, there is a better understanding of where significance may specifically exist/not exist across manufacturers. 




