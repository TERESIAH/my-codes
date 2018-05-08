cars
cars1=ts(cars)
cars1=ts(cars,frequency=4,start=c(2015,1))
cars1
plot.ts(cars1)

*arima models

Tess=read.csv(file.choose(),header=T)
Tess
attach(Tess)
sales
salests=ts(sales,start=c(1980,3),frequency=12)
salests
plot.ts(salests)//it is a multiplicative model
decompose(salests)
X1=decompose(salests,type=c("multiplicative"))
plot(X1)
plot(X1$trend)

wacu=read.csv(file.choose(),header=T)
wacu
attach(wacu)
rain
raints=ts(rain,start=c(1990,1),frequency=4)
raints
plot.ts(raints)//it is an additive model
decompose(raints)
X2=decompose(raints)
plot(X2)

///Smoothing
require(TTR)
K=SMA(salests,n=10)
plot(K)

///Forecasting
Triza=log(salests)
plot.ts(Triza)

///ARIMA MODEL(p,d,q)
acf(Triza)//if most lines are outside the blue line the data is not stationary hence we difference

///DIFFERENCING
Triza2=diff(Triza,differences=1)
acf(Triza2)
require(fpp)
adf.test(Triza2)
pacf(Triza2)

best model
1 fewer parameters
2 minimises AIC and BIC

arima(Triza2,order=c(2,1,1))

require(forecast)
X3=auto.arima(Triza2,seasonal=F,trace=T)
X4=forecast(X3,h=12)
X4
plot(X4)
X5=exp(X4)