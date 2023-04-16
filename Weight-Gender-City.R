# To run levene test
install.packages('car')
library('car')

# 2nd question
weight <- c(42, 55, 37, 45, 62, 57, 32, 60, 40, 52, 58, 60, 56, 42, 46)
gender <- c('M', 'M', 'M', 'F', 'F', 'C', 'C', 'M', 'M', 'F', 'F', 'F', 'C', 'C', 'C')
city <- c('Mum', 'Mum', 'Mum', 'Mum', 'Mum', 'Mum', 'Mum', 'Chen', 'Chen', 'Chen', 'Chen', 'Chen', 'Chen', 'Chen', 'Chen')

length(weight)

length(gender)

length(city)

shapiro.test(weight)

boxplot(weight ~ gender + city)

leveneTest(weight ~ gender)

leveneTest(weight ~ city)

result2 <- aov(weight ~ gender + city)
summary(result2)

#∵ p value is greater than 0.05, we fail to reject the null hypothesis 
#∴ we conclude there is no significant difference in the mean weight of gender and city 
