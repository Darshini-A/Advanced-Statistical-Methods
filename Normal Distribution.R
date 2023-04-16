# 1. Basic 
pnorm(500, 450, 100) - pnorm(399, 450, 100)
pnorm(630, 450, 100, lower.tail = FALSE)
pnorm(629, 450, 100, lower.tail = TRUE)
pnorm(479, 450, 100, lower.tail = FALSE)


# 2. Plot
x <- seq(-10, 10, by = 0.1)
y <- dnorm(x, mean = 2.5, sd = 0.5)
plot(x, y)

x <- seq(-10, 10, by = 0.1)
y <- dnorm(x, mean = 2.5, sd = 0.5)
plot(x, y, col = 'red')

x <- seq(-10, 10, by = 0.1)
y <- pnorm(x, mean = 2.5, sd = 0.5)
plot(x, y)

x <- seq(0, 1, by = 0.02)
y <- qnorm(x, mean = 2, sd = 1)
plot(x, y)

y <- rnorm(50)
hist(y, main = 'Normal Distribution')

x = seq(-15, 15, by = 0.1)
y = dnorm(x, mean(x), sd(x))
plot(x, y)