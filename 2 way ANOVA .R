# To run levene test
install.packages('car')
library('car')


# 1. 
mark <- c(4, 6, 8, 6, 6, 9, 8, 9, 13, 4, 8, 9, 7, 10, 13, 12 ,14, 16)
gender <- c('B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G')
age <- c('T', 'T', 'T','E', 'E', 'E', 'TV', 'TV', 'TV', 'T', 'T', 'T', 'E', 'E', 'E', 'TV', 'TV', 'TV')

length(mark)

length(gender)

length(age)

shapiro.test(mark)

boxplot(mark ~ gender + age)

leveneTest(mark ~ gender)

leveneTest(mark ~ age)

result1 <- aov(mark ~ gender + age)
summary(result1)

#∵ p value is greater than 0.05, we fail to reject the null hypothesis 
#∴ we conclude there is no significant difference in the mean mark of gender and age


# 2.
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
