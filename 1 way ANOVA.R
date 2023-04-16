# To run levene test
install.packages('car')
library('car')


# 1. 
income <- c(20000, 15000, 32000, 43000, 25000, 18000, 28000, 35000, 42000, 30000, 27000, 12000)
occupation <- c('B', 'S', 'B', 'S', 'R', 'R', 'S', 'B', 'B', 'S', 'S', 'R')
length(income)

length(occupation)

shapiro.test(income)

boxplot(income ~ occupation)

leveneTest(income ~ occupation)

result1 <- aov(income ~ occupation)
summary(result1)


# 2. 
marks <- c(528, 586, 680, 718, 514, 457, 521, 370, 532, 649, 506, 556, 413, 470, 372, 440, 495, 321, 424, 330)
division <- c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C', 'C', 'D', 'D', 'D', 'D', 'D', 'D')
length(marks)

length(division)

shapiro.test(marks)

boxplot(marks ~ division)

leveneTest(marks ~ division)

result2 <- aov(marks ~ division)
summary(result2)


# 3. 
sample <- c(5, 5, 2, 2, 4, 2, 3, 3, 0, 2, 2, 1, 0, 1, 2, 1, 1, 3)
therapy <- c('A', 'A', 'A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C', 'C', 'C', 'C')
length(sample)

length(therapy)

shapiro.test(sample)

boxplot(sample ~ therapy)

leveneTest(sample ~ therapy)

result3 <- aov(sample ~ therapy)
summary(result3)
