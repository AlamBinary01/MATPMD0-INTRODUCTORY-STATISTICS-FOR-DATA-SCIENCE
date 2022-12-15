#loading Libraries
library(stats)
library(dplyr)

#1 Data summarizaiton 
a= r$BodyFat
b=r$Abdomen
# Calculation  mean of the given data
mean(a)
mean(b)


# Calculation  median of the given data
median(r$BodyFat)
median(r$Abdomen)

# Calculation  mode of the given data
Mode(a)
Mode(b)

#calculate standard deviation
sd(a)
sd(b)
#calculate Variance
var(a)
var(b)
#calculate IQR 
quantile(a)
quantile(b)

#Data visualization
str(a)
str(b)

#Numeric Data -Histogram
hist(a)
hist(b)

#Catagorical Data -Barplot
barplot(a)
barplot(b)

cor(a,b)

#T test

t.test(r$BodyFat,r$Abdomen)

#linear Regression Model
v=lm(r$BodyFat~r$Abdomen,data = r)

base_model <- lm(a ~ b + a, data = r)
base_model_output <- predict(base_model, newdata = r)


base_model_output
cbind(base_model_output)





