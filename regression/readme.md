# Regression Model


### Finding correlation between attributes

![cor](https://user-images.githubusercontent.com/57750986/221407895-25f3d4ec-eed1-4e6f-85d6-7ecbd3fb050f.png)

Categorical values are first changed to numerical values then it’s passed to the ‘cor’ function
Correlation chart of the attributes to help choose independent and dependent variables
Based on the table we chose the ‘age’ as the dependent variable and ‘balance’ and ‘marital status’ as independent variable
<br>



### Regression model implementation

![Screenshot from 2023-02-26 17-59-59](https://user-images.githubusercontent.com/57750986/221408808-1fa2bd91-0f6e-4d2c-bc26-bb8e251a6419.png)

Based on the model summary, there is a multiple R-squared score of 0.01843. This means that approximately 1.824% of variation in ‘balance’ 
can be explained by the model (age + education)
<br>



### Model Diagnostic Plots

![plots](https://user-images.githubusercontent.com/57750986/221408932-bfdaf81b-d72a-43ff-8a17-123e19cb1251.png)

**Residuals vs fitted** - checks the linear relationship assumption, should be randomly scattered pattern of points with no clear trend or pattern. But in the model it shows that it is not randomly scattered and most points are at the bottom of the table. This could be because there are alot of data considered
<br><br>
**Normal Q-Q** - shows if the residuals are normally distributed. Should be close to the diagonal line but the table shows it’s not a diagonal line and slopes up towards the end. 
<br><br>
**Scale-location** - checks the constant error variance assumption. points should also be randomly distributed in the chart, but it shows that it is not randomly scattered and most points are at the bottom of the table. 
<br><br>
**Residuals vs Leverage** - helps identify influential outliers that have a large impact on the regression line.  The model was not able to detect any because there is no Chrysler Imperial line. 
<br><br>



### Regression Line

![line](https://user-images.githubusercontent.com/57750986/221408970-5451de18-0332-4d28-a1dd-fdeb63042b0c.png)

We picked out balance as a dependent variable and age + education as independent variables. This is to answer the question of
how does loan balance relate to age and education level. Based on the regression graph taken it shows that: <br>
- Most people have remaining balances below 25,000<br>
- People ages 30-60 have the most remaining balance. <br>
- There are only 3 outliers with a remaining balance of around 75,000 to 100,000 around the age of 50 - 90 years old. <br>
