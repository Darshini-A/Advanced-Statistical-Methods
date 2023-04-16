# To run levene test
install.packages('car')
library('car')

#1st 
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
