# ========================================================================================================
# Purpose:      Simple multiple Regression Model for bank marketing dataset
# Author:       Rono, C.L
# DOC:          26 Feb 2023
# Topics:       Regression
# Data:         bank-full.csv
#=========================================================================================================
#install.packages("dplyr")
library(dplyr)
library(ggplot2)

#File Extraction
setwd("/home/cara/Desktop/CS174")
data1 <- read.csv("bank/bank-full.csv", header = TRUE, sep = ";")
print(data1)

#checking correlation between attributes 
data2<- data1[, -c(5, 9,10,11,13,14,15,16,17)] #drop other values that will not be used
data2 <- data2 %>% #changing categorical values to numerical ones
  mutate(across(everything(), ~ as.numeric(factor(.))))
cor(data2, method="pearson") 

#lm function 
model <- lm(balance~ age + education, data1)
summary(model)
par(mfrow =c(2,2))
plot(model)
par(mfrow =c(1,1))


#factoring education categorical values to seperate columns
#data3 <- data1[, -c(2,3,7,8,5, 9,10,11,12,13,14,15,16,17)] #drop other values that will not be used
#data3$education <- factor(data3$education)
#dummy_vars <- model.matrix(~education - 1, data = data3)
#data3 <- cbind(data3, dummy_vars)
#data3 <- data3[, -c(2)]

#changing categorical to numerical
#factored to numbers tertiary education = 3, secondary = 2, etc. 
data1$education <- as.numeric(factor(data1$education))

#plotting regression graph
ggplot(data1, aes(x = balance, y = age + education)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "red")


