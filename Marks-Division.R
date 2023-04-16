# To run levene test
install.packages('car')
library('car')

#2nd 
marks <- c(528, 586, 680, 718, 514, 457, 521, 370, 532, 649, 506, 556, 413, 470, 372, 440, 495, 321, 424, 330)
division <- c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C', 'C', 'D', 'D', 'D', 'D', 'D', 'D')
length(marks)

length(division)

shapiro.test(marks)

boxplot(marks ~ division)

leveneTest(marks ~ division)

result2 <- aov(marks ~ division)
summary(result2)
