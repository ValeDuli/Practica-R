##### SIMPLE EXPONENTIAL SMOOTHING #####

#- Que es el simple exponential smoothing
#- Tipos de metodos: naive, average, moving average, weighted
#- Media movil?? Holt winters? SES? ETS?
#- Formulas para cada modelo y su interpretacion
#- Aprendiendo las funciones usadas en R
#- Graficando los datos y modelos
#- Predicciones y sus graficos
#- Desempeño del modelo


#The simplest of the exponentially smoothing methods is naturally called
#simple exponential smoothing (SES). This method is suitable for
#forecasting data with no clear trend of seadonal patterns

#### 1
#Naive method: Y^_t + h = Y_t . h=1,2,3
#--->the most recent observation is the only important one

#### 2
#average method Y^_t|N = 1/N Sum t= 1 to N of ( y_t)
#-->all future forecasts are equal to a simple average of the observed data,
#moving average (rolling mean): Y^_t+1|k = 1/k Sum t= n-k+1 to n of ( y_t)
#     5: obs

#### 3 Holt linear
#### Exponential moving average
#Weighted average form: Y^_t +1 = a*y_t + (1-a)*y^_t|t-1
#                       0 <= a <= 1 smoothing parameter
#->weighted average between the most recent observation yT and the previous forecast
#Component form:  S0=Y=0
#                 St=a*y_t + (1-a)*S_t-1
#S1,S2,S3,...,SN
#->How to choose alpha??
#*Using method of least squares   SSE = SUM (y_t - y^t|t-1)=SUM(e^2_t)

#Cuando utilicar este modelo???
#   --> futuro inmediato
#   --> mayor peso a recientes observaciones

### Let's use R
library(ggplot2)
library(forecast)
library(fpp)

#Annual oil production (millions of tonnes), Saudi Arabia, 1965-2010.
data("oil")
oil

oildata<-window(oil, start=1996)

autoplot(oildata)+
  ylab("Oil (millions of tonnes)") + xlab("Year") +
  labs(title = "Oil production in Saudi Arabia from 1996 to 2012")

plot(decompose(oildata))
library(tseries)
adf.test(oildata)
plot(diff(oildata))
adf.test(diff(oildata))

##

##### function SES
# h being the number of periods for forecasting
# alpha being the level smoothing parameter
# initial being the method for selecting initial state values

# Estimate parameters
library(forecast)
fc<-ses(oildata, h=5) ##alpha S_t+l = a*y_t + (1-a)*S_t-1
fc$model
fc$fitted

####forecast and CI

autoplot(fc)+
  autolayer(fitted(fc),series = "Fitted") +
  ylab("Oil (millions of tonnes)") + xlab("Year")

accuracy(fc)

##function Holt Winters

##forecasting
library(forecast)
myholts<-HoltWinters(oildata, beta = FALSE, gamma = FALSE)
myholts
myholts$fitted

##modelo
autoplot(myholts$fitted, main="Holt-Winters exponential smoothing for oil data") +
  autolayer(myhw$fitted, series="Ajustados") +
  autolayer(oildata, series = "Oildata")

##Predict
myhw<-forecast(myholts,h=5,findfrequency=TRUE)

##forecast
plot(myhw)

#forecast
autoplot(myhw,main="Holt-Winters exponential smoothing for oil data")+
  autolayer(oildata, series = "Oildate")

###------ETS model------#

library(forecast)
ets_oil=ets(oildata)
ets_oil
ets_oil$mse
ets_oil$fitted
autoplot(ets_oil,main="ETS Exponential smoothing for oil data")
autoplot(ets_oil$fitted, main="ETS Exponential smoothing for oil data")+
  autolayer(oildata, series = "Oildata")

##predict
ets_oil_for<-forecast(ets_oil, h=5, findfrequency=TRUE)

##forecast and CI
plot(ets_oil_for)
autoplot(ets_oil_for,main="ETS Exponential smoothing for oil data")

##-----Metricas RMSE-----##
library(MLmetrics)
MSE(oildata,ets_oil$fitted)##o usar RMSE
MSE(oildata,fc$fitted) ##Ses
MSE(oildata,myholts$fitted) ##Holt linear
