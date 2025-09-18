# 1. Pandemic 
# decimal_date() function
install.packages('lubridate')
library('lubridate')

# 22nd January, 2020 to 15 April, 2020
x <- c(580, 7813, 28266, 59287, 75700, 87820, 95314, 126214, 218843, 471497, 936851, 1508725, 2072113)

mts <- ts(x, start = decimal_date(ymd("2020-01-22")), frequency = 365.25/7)

png(file = "Pandemic.png")

plot(mts,
     xlab = "Weekly Data",
     ylab = "Total Positive Cases",
     main = "COVID-19 PANDEMIC",
     col.main = "darkgreen")

dev.off()

# 2. Rainfall
# get all data in form of R vector
rainfall <- c(799, 1174.8, 865.1, 1334.6, 635.4, 918.5, 685.5, 998.6, 784.2, 985, 882.8, 1071)

# convert into time series object
rainfall.timeseries <- ts(rainfall, start = c(2012, 1), frequency = 12)

print(rainfall.timeseries)

png(file = "Rainfall.png")
plot(rainfall.timeseries, main = "Rainfall Time Series")
dev.off()


# 3. Snowfall
# getting the data points in the form of R vector
snowfall <- c(790, 1170.8, 860.1, 1330.6, 630.4, 911.5, 683.5, 996.6, 7832, 982, 881.8, 1021)

#converting it into a time series object
snowfall.timeseries <- ts(snowfall, start = c(2013, 1), frequency = 12)

print(snowfall.timeseries)

png(file = "Snowfall.png")
plot(snowfall.timeseries, main = "Snowfall Time Series")
dev.off()
