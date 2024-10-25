attach(preciopm)
names(preciopm)
library(xts)
library(tidyverse)
library(lubridate)
library(tseries)
library(astsa)
library(forecast)
library(foreign)
library(timsac)
library(vars)
library(mFilter)
library(dynlm)
precio.ts=ts(preciopm, start = c(1990,1), end = c(2019,4), frequency = 12)
print(precio.ts)
class(precio.ts)
start(precio.ts);end(precio.ts)
boxplot(precio.ts~cycle(precio.ts))
cycle(precio.ts)

#Para graficar la serie de tiempo
plot(precio.ts, ylab="precio", main="Precio del pretroleo maya")

#Para Modelo aditivo
modeloaditivo=decompose(precio.ts)
plot(modeloaditivo)

#Para el modelo multiplicativo
modelomultiplicativo=decompose(precio.ts,type = "mult")
plot(modelomultiplicativo)

#Para estimar la tendencia
Tendencia=modelomultiplicativo$trend
print(Tendencia)

#Para estimar la Estacionalidad
Estacionalidad=modelomultiplicativo$seasonal
print(Estacionalidad)

ts.plot(cbind(Tendencia, Tendencia*Estacionalidad),lty=1:2)
