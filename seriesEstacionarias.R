attach(preciopm)
names(preciopm)
library(xts)
library(tidyverse)
library(lubridate)
library(tseries)
library(astsa)
library(foreign)
library(forecast)
library(timsac)
library(vars)
library(mFilter)
library(dynlm)
library(nlme)

#Especificar periodo de tiempo
preciopm.ts=ts(precio,start = c(1990,1),frequency = 12)
start(preciopm.ts);end(preciopm.ts)
preciopm.ts
class(preciopm.ts)
plot(preciopm.ts, ylab="Precio", main="Precios del petroleo maya en mexico")

seasonplot(preciopm.ts, col = rainbow(12), year.labels = TRUE)

#Funcion de Autocorrelacion
acf(preciopm.ts)

ndiffs(preciopm.ts)

#Usar Diferenciacion (Prinera Diferencia del precio)
seriedif=diff(preciopm.ts)
plot(seriedif)
acf(seriedif)
ndiffs(seriedif)

#Analisis visual de las graficas de Autocorrelacion
par(mfrow=c(2,2),mar=c(4,4,4,1)+.1)
plot(preciopm.ts,ylab="Precio")
acf(preciopm.ts, main="Serie No Estacionaria")
plot(seriedif)
acf(seriedif, main="Serie Estacionaria")
