## Homework 4, Problem 1

library(dplyr)

## Read the data
houseWork <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houseWork.csv')
str(houseWork)

## a)
table (houseWork$sex)

## b)

Hworkf <- houseWork$hours[houseWork$sex == 'f']
Hworkm <- houseWork$hours[houseWork$sex == 'm']

avgworkF <- mean(Hworkf)
avgworkM <- mean(Hworkm)

## c)

houseWork <- within(houseWork, {
  female <- ifelse(sex == 'f', TRUE , FALSE)
  male <- ifelse(sex == 'm', TRUE, FALSE)
})

str(houseWork)

## d)

fit <- lm ( hours ~ female , data = houseWork)
summary(fit)


## e)



## f)
### H0 : The average house-work hours for women are less than or equal to the average house-work hours for men 
### H1 : The average house-work hours for women are greater than the average house-work hours for men

## g)

T <- (-14.4555 - 32.8138) /0.3186
pt ( -T , df = 2)

## h)

##we cannot reject H0: µf ≤ µm at a 1% error probability, because the test-statistic is less than the crittical value.

## i)

## j)

fit1 <- lm( hours ~ female + male , data=houseWork) 
summary(fit1)
