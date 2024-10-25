library(readxl)
library(stats)
base_de_datos<-read_excel("base de datos.xlsx")

#Realizamos pruebas de normalidad
matutino<-base_de_datos%>%filter(turno=="Matutino")
vespertino<-base_de_datos%>%filter(turno=="Vespertino")
shapiro.test(matutino$ansiedad_final)
shapiro.test(vespertino$ansiedad_final)

#Hacemos una prueba de homogeneidad de varianzas
bartlett.test(base_de_datos$ansiedad_final,base_de_datos$turno)

#Ejecutamos una prueba T de student para muestras independientes con varianzas homogenias

t.test(x=matutino$ansiedad_final,y=vespertino$ansiedad_final,
       alternative = "two.sided", paired=F, var.equal=T)

