n<-100
sd<-10

data1<-arima.sim(model = list(ma=0.8),n=n,sd=sd)
data2<-arima.sim(model = list(ma=c(0.8,0.7)),n=n,sd=sd)

par(mfrow=c(1,2))
plot(data1,main="MA(1) data")
acf(data1, main="ACF for MA(1) data")

par(mfrow=c(1,2))
plot(data2,main="MA(2) data")
acf(data2, main="ACF for MA(2) data")
par(mfrow=c(1,1))

##  Modelo o proceso de Media Movil MA(q)

ARIMA

####Moving Average Model (order q)

#Si mu=0

#-X(t) = v(t) + b_1*v(t-1) + ... + b_q*v(t-q), donde v(t) ~ WN(0, s^2)

#Si mu es diferente de 0

#-X(t) = mu + v(t) + b_1*v(t-1) + ... + b_q*v(t-q), donde v(t) ~ WN(0,s^2)

#--> Parametros del modelo b1,b2,...,b_q

#-->Modelo siempre estacionario

#-->No confundirse con Moving Average smoothing

#-->Puede reescribirse como un modelo Autoregresivo infinot AR(p)

#-->Puede considerarse como una regresion lineal (pero no ajustamos los WN)

#-->Media y varianza del proceso MA(q) seran constantes

####Example

plot(data1, main="Made Data 1")
plot(data2, main="Made Data 2")

##Autocorrelation plot

##First data

acf(data1,main="ACF for data1")

write.csv(data1,"data1.csv")

##which model we try? q=?

#-->X(t) = mu + v(t) + b_1* v(t-1)

####Second data

plot(data2)
acf(data2, main="ACF dor data2")

#-->X(t) = mu + v(t) + b_1* v(t-1) + b_2* v(t-2)

### How to fit MA (q) model

plot(data1)
print("Media de mis datos: ")
mean(data1)

print("SD de mis datos: ")
sd(data1)

# ajustando modelo

MA1<-arima(data1, order=c(0,0,1))
MA1

##mu=?

##b1=?

##sigma^2=?

#-->X(t)= -2.4822 + v(t) + 0.8144 * v(t-1) , v(t) = WN(0, 113.7)

predict(MA1, n.ahead = 10)
MA_forecast<-predict(MA1,n.ahead = 10)$pred
MA_forecast_se<-predict(MA1, n.ahead = 10)$se
points(MA_forecast, type = "l", col=2)
points(MA_forecast-2*MA_forecast_se, type = "l", col=2,lty=2)
points(MA_forecast+2*MA_forecast_se, type = "l", col=2,lty=2)

