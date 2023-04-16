# 1. 
observed1 <- c(212, 147, 103, 50, 46, 42)
expected1 <- c(rep(100, 6))
chisq.test(observed1, p = c(rep(1/6, 6)))


# 2. 
observed2 <- c(50, 60, 40, 47, 42)
expected2 <- c(rep(50, 5))
chisq.test(observed2, p = c(rep(1/5, 5)))


# 3. Verify whether the voting preferences are independent of gender
gender <- c('M', 'M', 'F', 'M', 'F', 'F', 'F', 'F', 'F', 'F')
voting_pref <- c('O', 'E', 'E', 'E', 'E', 'O', 'O', 'O', 'O', 'O')
typeof(gender)

gender <- factor(gender)
typeof(gender)

data <- table(gender, voting_pref)
chisq.test(data)

# change any one observed value
gender <- c('M', 'M', 'F', 'M', 'F', 'F', 'F', 'F', 'F', 'F')
voting_pref <- c('O', 'E', 'O', 'E', 'E', 'O', 'O', 'O', 'O', 'O')
typeof(gender)

gender <- factor(gender)
typeof(gender)

data <- table(gender, voting_pref)
chisq.test(data)


# 4. Verify whether the smoking preferences are independent of gender
gender <- c('M', 'M', 'F', 'M', 'F', 'F', 'F', 'F', 'F', 'F', 'M', 'M', 'M', 'M', 'M')
smoking <- c('Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N')
typeof(gender)

gender <- factor(gender)
typeof(gender)

data <- table(gender, smoking)
chisq.test(data)