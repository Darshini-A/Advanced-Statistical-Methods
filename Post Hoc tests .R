# -	Scheffe’s Method
install.packages('DescTools')
library('DescTools')

# -	Tukey’s HSD

# -	Duncan’s Test
install.packages('agricolae')
library('agricolae')


# 1. 
BW1 <- c(3510, 3174, 3580, 3232, 3884, 3982, 4035, 3459, 3998, 3852, 3421)
BW2 <- c(3444, 3111, 2890, 3082, 2995, 3101, 3400, 3764, 2997, 3031, 3120)
BW3 <- c(2608, 2555, 3100, 1775, 2985, 2479, 2901, 2778, 2099, 2500, 2322)
BW4 <- c(2232, 2331, 2208, 2121, 2001, 1566, 1667, 1783, 2002, 2118, 1882)
data <- data.frame(Sr.no = c(1:44), Birth.Weight = c(BW1, BW2, BW3, BW4), Group = rep(c("Gr1", "Gr2", "Gr3", "Gr4"), each = 11))
head(data)

summary(data$Birth.Weight, by = data$Group, graph = F)

anova(lm(data$Birth.Weight~data$Group))

model <- aov(data$Birth.Weight~data$Group)
model

ScheffeTest(model, "data$Group", group = TRUE, console = TRUE)
#∵ p values are lesser than 0.05, we fail to accept the null hypothesis 
#∴ we conclude there is significant difference in all the groups

TukeyHSD(model, "data$Group", group = TRUE, console = TRUE)
#∵ p values are lesser than 0.05, we fail to accept the null hypothesis 
#∴ we conclude there is significant difference in the groups

duncan.test(model, "data$Group", group = TRUE, console = TRUE)
#∴ we conclude there is significant difference in the groups


# 2. CSV eg - Sweetpotato
data("sweetpotato")
model1<- aov(yield~virus, data = sweetpotato)

duncan.test(model1, "virus", group = TRUE, console = TRUE)
#∴ we conclude there is no significant difference in the groups


# 3. 
A <- c(9, 14, 11)
B <- c(20, 19, 23)
C <- c(39, 38, 41)

data1 <- data.frame(Sr.no = c(1:9), Subject = c(A, B, C), Group = rep(c("Gr1", "Gr2", "Gr3"), each = 3))
head(data1)

anova(lm(data1$Subject~data1$Group))
#∵ p values are lesser than 0.05, we fail to accept the null hypothesis 
model2 <- aov(data1$Subject~data1$Group)

ScheffeTest(model2, "data1$Group", group = TRUE, console = TRUE)
#∵ p values are lesser than 0.05, we fail to accept the null hypothesis 
#∴ we conclude there is significant difference in the groups

TukeyHSD(model2, "data1$Group", group = TRUE, console = TRUE)
#∵ p values are lesser than 0.05, we fail to accept the null hypothesis 
#∴ we conclude there is significant difference in the groups 

duncan.test(model2, "data1$Group", group = TRUE, console = TRUE)
#∴ we conclude there is significant difference in the groups
