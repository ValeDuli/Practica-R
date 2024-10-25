library(dplyr)
library(nortest)
library(stats)
library(car)
library(readxl)

base_de_datos<-read_excel("base de datos.xlsx")

matutino<-base_de_datos%>%filter(turno=="Matutino")
vespertino<-base_de_datos%>%filter(turno=="Vespertino")
shapiro.test(matutino$estres_final)
shapiro.test(vespertino$estres_final)

leveneTest(y=base_de_datos$estres_final,group = base_de_datos$turno)

#Como p-valor=0.6744>0.05, entonces no se rechaza Ho

psicologia<-base_de_datos%>%filter(licenciatura=="Psicología")
biologia<-base_de_datos%>%filter(licenciatura=="Biología")
medicina<-base_de_datos%>%filter(licenciatura=="Medicina")
shapiro.test(psicologia$estres_final)
shapiro.test(biologia$estres_final)
shapiro.test(medicina$estres_final)

bartlett.test(base_de_datos$estres_final,base_de_datos$licenciatura)

#Como el p-valor=0.08046>0.05 entonces no se rechaza Ho

