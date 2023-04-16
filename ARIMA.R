# Auto Regressive Integrated Moving Average

# auto correlation function - acf
# partial-auto correlation function - pacf

MA_1 <- arima.sim(model = list(ma = 0.5), n = 200)
plot(MA_1)

MA_2 <- arima.sim(model = list(ma = 0.9), n = 200)
plot(MA_2)

MA_3 <- arima.sim(model = list(ma = -0.6), n = 200)
plot(MA_3)

plot.ts(cbind(MA_1, MA_2, MA_3), main = "Moving Average Model Simulation Data")

acf(MA_1)
pacf(MA_1)

acf(MA_2)
pacf(MA_2)

acf(MA_3)
pacf(MA_3)