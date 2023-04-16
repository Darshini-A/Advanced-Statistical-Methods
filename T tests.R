# 1. 1 sample
iq <- c(109, 112, 106, 110, 108, 115, 99, 108, 104, 111)
t.test(iq, mu = 100, alpha = 0.05, alternative = 'two.sided')

#∵ p value is lesser than 0.05, we fail to accept the null hypothesis 
#∴ there is significant difference 


# 2. Paired 
preteaching <- c(19, 15, 12, 9, 13, 5, 6, 11, 12, 8)
postteaching <- c(16, 18, 17, 12, 19, 20, 15, 15, 20 ,13)

difference <- preteaching - postteaching
print(difference)

shapiro.test(difference)

boxplot(difference)
#There are no significant outliers

t.test(preteaching, postteaching, paired = TRUE)

#∵ p value is greater than 0.05, we fail to reject the null hypothesis 
#∴ we conclude there is no significant difference between preteaching and postteaching


# Paired CSV eg
setwd("C:/Users/darsh/Desktop/Sem II/ASM/Prac/T tests")
player <- read.csv("Player.csv")
head(player)

difference <- player$Before - player$After
shapiro.test(difference)

boxplot(diff)  
t.test(player$Before, player$After, paired = TRUE)

#∵ p value is greater than 0.05, we fail to reject the null hypothesis 
#∴ we conclude there is no significant difference between before and after


# 3. Independent
# To run levene test
install.packages('car')
library('car')

weight <- c(67, 58, 54, 78, 80, 63, 52, 50, 76, 69, 72, 51, 73, 65)
gender <- c('M', 'F', 'F', 'M', 'F', 'F', 'F', 'M', 'M', 'M', 'M', 'F', 'M', 'F')
gender <- factor(gender)

shapiro.test(weight)

boxplot(weight ~ gender)

leveneTest(weight ~ gender)

t.test(weight ~ gender, alpha = 0.05, alternative = 'two.sided')

#∵ p value is greater than 0.05, we fail to reject the null hypothesis 
#∴ we conclude there is no significant difference 