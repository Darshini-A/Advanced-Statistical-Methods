# To run levene test
install.packages('car')
library('car')

#3rd 
sample <- c(5, 5, 2, 2, 4, 2, 3, 3, 0, 2, 2, 1, 0, 1, 2, 1, 1, 3)
therapy <- c('A', 'A', 'A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C', 'C', 'C', 'C')
length(sample)

length(therapy)

shapiro.test(sample)

boxplot(sample ~ therapy)

leveneTest(sample ~ therapy)

result3 <- aov(sample ~ therapy)
summary(result3)
