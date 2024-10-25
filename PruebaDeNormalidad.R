library(dplyr)
library(nortest)
library(readxl)
library(stats)

base_de_datos<-read_excel("base de datos.xlsx")

#Usamos lillie.test() para la prueba de Kolmogorov-Smirnov, cuando tenemos
#muestras de mas de 50 elementos. Usamos shapiro.test() para la prueba 
#de Shapiro Wilk con muestras de 50 elementos o menos

lillie.test(base_de_datos$estres_inicio)

#Como p-valor=0.08977>alfa=0.05, entonces no se rechaza la Ho

matutino<-base_de_datos%>%filter(turno=="Matutino")
shapiro.test(matutino$estres_final)

#Como p-valor=0.03953<0.05, entinces se rechaza la Ho

cuarto<-base_de_datos%>%filter(semestre==4)
shapiro.test(cuarto$estres_inicio)

#Como p-valor=0.7498>0.05, entonces no se rechaza la Ho
