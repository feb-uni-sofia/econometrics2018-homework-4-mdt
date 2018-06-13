## Homework 4, Problem 2
crime <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/crime.csv', stringsAsFactors = FALSE)
str(crime)

## a)

fit <- lm (C ~ HS, data = crime)
summary(fit)

## There is positiv elasticity for HS that mean that when we observe promotion at HS
##there is also promotion at Crime rate, but that doesn't mean that they are related 

## b)

plot(crime[2:5])

## c)
summary(crime)
fit1 <- lm( C ~ HS + U, data = crime)
summary(fit)

###We would explain that the estimated coefficient 
##of HS changes its sign when U is included in the model with that HS is dependet from U and influence it. It 
## can be that the people who living in the urban environment are more likely to study in HS than the others.

## d)

##  Betweeen the education and crime rates is no direct connection, cuz we can't say that the reduce of 
## education spending can cause the low levels of crime or the opposite. Also there are many factors 
##that influence the rate

## e)

fit1 <- lm( C ~ HS + U + I, data = crime)
summary(fit1)




