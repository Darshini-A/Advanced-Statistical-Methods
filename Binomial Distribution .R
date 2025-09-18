# 1.  Basic
dbinom(0, 4, 0.5)
dbinom(1, 4, 0.5)
dbinom(2, 4, 0.5) + dbinom(3, 4, 0.5) + dbinom(4, 4, 0.5)
pbinom(2, 4, 0.5, lower.tail = TRUE)
pbinom(1, 4, 0.5, lower.tail = FALSE)
rbinom(10, 100, 0.4)
rbinom(10, 1000, 0.4)
rbinom(10, 1000, 0.6)
qbinom(0.4, 4, 0.5)
qbinom(0.37, 4, 0.5)


# 2. A coin is tossed 10 times, what is the probability:

#a. exactly 4 heads
dbinom(4, 10, 0.5)

#b. at most 4 heads
# use lower.tail 
pbinom(4, 10, 0.5, lower.tail = TRUE)

#c. atleast 4 heads
pbinom(3, 10, 0.5, lower.tail = FALSE)

#d. if probability is 0.45, how many heads?
qbinom(0.45, 10, 0.5)  


# 3. Plot
success <- 0:20

plot(success, dbinom(success, size = 20, prob = 0.3), type = 'h') #histogram

plot(success, dbinom(success, size = 20, prob = 0.3), type = 'b') # both lines & points

plot(success, dbinom(success, size = 20, prob = 0.3), type = 'p') # points

plot(success, dbinom(success, size = 20, prob = 0.3), type = 's') # stair steps

plot(success, dbinom(success, size = 20, prob = 0.3), type = 'l') # lines

plot(success, dbinom(success, size = 20, prob = 0.3))

plot(success, dbinom(success, size = 20, prob = 0.3), 
     type = 'h',
     main = "Binomial distribution (n = 20, p = 0.3)",
     ylab = 'Probability',
     xlab = 'Success',
     lwd = 3)   # line width
