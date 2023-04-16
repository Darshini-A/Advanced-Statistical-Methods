# To run levene test
install.packages('car')
library('car')

# 1st 
income <- c(20000, 15000, 32000, 43000, 25000, 18000, 28000, 35000, 42000, 30000, 27000, 12000)
occupation <- c('B', 'S', 'B', 'S', 'R', 'R', 'S', 'B', 'B', 'S', 'S', 'R')
length(income)

length(occupation)

shapiro.test(income)

boxplot(income ~ occupation)

leveneTest(income ~ occupation)

result1 <- aov(income ~ occupation)
summary(result1)
