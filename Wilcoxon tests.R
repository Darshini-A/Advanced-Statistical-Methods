# 1. 1 sample 
set.seed(1234)
data <- data.frame(
  name = paste0(rep('R_', 10), 1:10),
  weight = round(rnorm(10, 30, 2), 1)
)
print(data)

# When alternative is equal
result1 <- wilcox.test(data$weight, mu = 25)
result1
#∵ p value is equal to 0.05, we fail to accept the null hypothesis 

# When alternative is less 
result2 <- wilcox.test(data$weight, mu = 25, alternative = 'less')
result2
#∵ p value is lesser than 0.05, we fail to accept the null hypothesis 

# When alternative is greater
result3 <- wilcox.test(data$weight, mu = 25, alternative = 'greater')
result3
#∵ p value is equal to 0.05, we fail to accept the null hypothesis


# 2. Paired
before <- c(190.1, 190.9, 172.7, 213, 231.4, 196.9, 172.2, 285.5, 225.2, 113.7)
after <- c(392.9, 313.2, 345.1, 393, 434, 227.9, 422, 383.9, 392.3, 352.2)

myData <- data.frame(
  group = rep(c('before', 'after'), each = 10),
  weight = c(before, after)
)
myData

D <- data.frame(
  dBefore = before, 
  dAfter = after
)
D

wilcox.test(before, after, paired = TRUE)

wilcox.test(D$dBefore, D$dAfter, paired = TRUE)

wilcox.test(weight ~ group, data = myData, paired = TRUE) # alternative = equal

wilcox.test(weight ~ group, data = myData, paired = TRUE, alternative = 'less')

wilcox.test(weight ~ group, data = myData, paired = TRUE, alternative = 'greater')

wilcox.test(weight ~ group, data = myData, paired = TRUE, alternative = 'two.sided')