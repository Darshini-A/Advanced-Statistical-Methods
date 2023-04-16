# Moving Average

# time stamps
install.packages("zoo")
library(zoo)


set.seed(98234)
series <- 1:100 + rnorm(100, 0, 10)
series

moving_average <- function(x, n = 5)
  {
  stats::filter(x, rep(1/n, n), sides = 2)
}

ma <- moving_average(series)
ma

ma_mean <- rollmean(series, k = 5)
ma_mean

ma_max <- rollmax(series, k = 5)
ma_max

ma_median <- rollmedian(series, k = 5)
ma_median