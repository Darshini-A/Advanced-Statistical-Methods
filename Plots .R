# CDF - Cumulative Distribution Function
# 1.
Data = rnorm(500)
CDF <- ecdf(sample_Data)
plot(ecdf(Data))
curve(pnorm, from = -10, to = 10) # When distribution is known

# 2. 
head(iris)
plot(ecdf(iris$Sepal.Length))


# PDF - Probability Density Function
x <- seq(from = -3, to = +3, length.out = 100)
plot(x, dnorm(x)) > 2


# PMF - Probability Mass Function
rate <- 2
x <- 0:10
plot(x, dpois(x, lambda = rate),
     main = "Probability mass function for Po(2)",
     col = "red")


# LINE on HISTOGRAM
energy <- rnorm(100)
den <- density(energy)
sum(den$y) * diff(den$x[1:2])
hist(energy, probability = TRUE, col='lightblue')
lines(density(energy), col='red')


# combined
n <- 13
p <- 0.7
x <- 0:n
dbinom(6, size=n, prob=p)
plot(x, dbinom(x, size=n, prob=p), main= "PMF for bin (13, 0.7)")
pbinom(9, size=n, prob=p)

plot(x, pbinom(x, size=n, prob=p), type='s', main= "CDF for bin (13, 0.7)")
