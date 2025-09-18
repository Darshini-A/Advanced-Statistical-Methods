# 1. 
myData = PlantGrowth 
myData

result1 <- kruskal.test(weight ~ group, data = myData)
print(result1)

#∵ p value is lesser than 0.05, we fail to accept the null hypothesis 
#∴ we conclude there is significant difference 


# 2. 
sleep <- c(42, 34, 57, 69, 55, 29, 66, 46, 68, 42, 16, 32, 35, 66, 59)
hours <- c('8', '8', '8', '8', '8', '7', '7', '7', '7', '7', '6', '6', '6', '6', '6')

result2 <- kruskal.test(sleep ~ hours)
result2

#∵ p value is greater than 0.05, we fail to reject the null hypothesis 
#∴ we conclude there is no significant difference 


# 3. 
values <- c(45, 55, 60, 70, 72, 23, 41, 54, 66, 78, 20, 30, 34, 40, 44)
type <- c('m', 'm', 'm', 'm', 'm', 'w', 'w', 'w', 'w', 'w', 'mi', 'mi', 'mi', 'mi', 'mi')

boxplot(values ~ type)

result3 <- kruskal.test(values ~ type)
result3

#∵ p value is lesser than 0.05, we fail to accept the null hypothesis 
#∴ we conclude there is significant difference
