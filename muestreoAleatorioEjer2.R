library(dplyr)
library(sampling)

Archivo.2.para.muestreo
set.seed(2)
muestra_aleatoria<-slice_sample(.data=Archivo.2.para.muestreo,n=10,replace=F)
muestra_aleatoria

data.frame(table(Archivo.2.para.muestreo$year))
data.frame(table(Archivo.2.para.muestreo$sector))
data.frame(table(Archivo.2.para.muestreo$type_of_rnd_manpower))

muestra_est_np1<-strata(data = Archivo.2.para.muestreo,stratanames = c("year"),size=c(3,2,4,1,2,3,3,2,4),method = "srswor")
muestra_est_np1
muestra_est_np2<-strata(data = Archivo.2.para.muestreo,stratanames = c("sector"),size=c(3,2,4,5),method = "srswor")
muestra_est_np2
muestra_est_np3<-strata(data = Archivo.2.para.muestreo,stratanames = c("type_of_rnd_manpower"),size=c(3,2,4,1,2,3,3),method = "srswor")
muestra_est_np3

nrow(Archivo.2.para.muestreo)
n2010<-sum(with(Archivo.2.para.muestreo,year=="2010"))/nrow(Archivo.2.para.muestreo)
n2011<-sum(with(Archivo.2.para.muestreo,year=="2011"))/nrow(Archivo.2.para.muestreo)
n2012<-sum(with(Archivo.2.para.muestreo,year=="2012"))/nrow(Archivo.2.para.muestreo)
n2013<-sum(with(Archivo.2.para.muestreo,year=="2013"))/nrow(Archivo.2.para.muestreo)
n2014<-sum(with(Archivo.2.para.muestreo,year=="2014"))/nrow(Archivo.2.para.muestreo)
n2015<-sum(with(Archivo.2.para.muestreo,year=="2015"))/nrow(Archivo.2.para.muestreo)
n2016<-sum(with(Archivo.2.para.muestreo,year=="2016"))/nrow(Archivo.2.para.muestreo)
n2017<-sum(with(Archivo.2.para.muestreo,year=="2017"))/nrow(Archivo.2.para.muestreo)
n2018<-sum(with(Archivo.2.para.muestreo,year=="2018"))/nrow(Archivo.2.para.muestreo)
muestra_est_p1<-strata(data = Archivo.2.para.muestreo,stratanames = c("year"),size = c(round(30*n2010),round(30*n2011),round(30*n2012),round(30*n2013),round(30*n2014),round(30*n2015),round(30*n2016),round(30*n2017),round(30*n2018)),method = c("srswor"))
muestra_est_p1
data.frame(table(muestra_est_p1$year))

n1<-sum(with(Archivo.2.para.muestreo,sector=="Government Sector"))/nrow(Archivo.2.para.muestreo)
n2<-sum(with(Archivo.2.para.muestreo,sector=="Institutes of Higher Learning"))/nrow(Archivo.2.para.muestreo)
n3<-sum(with(Archivo.2.para.muestreo,sector=="Private Sector"))/nrow(Archivo.2.para.muestreo)
n4<-sum(with(Archivo.2.para.muestreo,sector=="Public Research Institutes"))/nrow(Archivo.2.para.muestreo)
muestra_est_p2<-strata(data = Archivo.2.para.muestreo,stratanames = c("sector"),size = c(round(20*n1),round(20*n2),round(20*n3),round(20*n4)),method = c("srswor"))
muestra_est_p2
data.frame(table(muestra_est_p2$sector))

v1<-sum(with(Archivo.2.para.muestreo,type_of_rnd_manpower=="Bachelors"))/nrow(Archivo.2.para.muestreo)
v2<-sum(with(Archivo.2.para.muestreo,type_of_rnd_manpower=="Masters"))/nrow(Archivo.2.para.muestreo)
v3<-sum(with(Archivo.2.para.muestreo,type_of_rnd_manpower=="Non Degree"))/nrow(Archivo.2.para.muestreo)
v4<-sum(with(Archivo.2.para.muestreo,type_of_rnd_manpower=="Other Supporting Staff"))/nrow(Archivo.2.para.muestreo)
v5<-sum(with(Archivo.2.para.muestreo,type_of_rnd_manpower=="PhD"))/nrow(Archivo.2.para.muestreo)
v6<-sum(with(Archivo.2.para.muestreo,type_of_rnd_manpower=="Post Graduate"))/nrow(Archivo.2.para.muestreo)
v7<-sum(with(Archivo.2.para.muestreo,type_of_rnd_manpower=="Technicians"))/nrow(Archivo.2.para.muestreo)
muestra_est_p3<-strata(data = Archivo.2.para.muestreo,stratanames = c("type_of_rnd_manpower"),size = c(round(20*v1),round(20*v2),round(20*v3),round(20*v4),round(20*v5),round(20*v6),round(20*v7)),method = c("srswor"))
muestra_est_p3
data.frame(table(muestra_est_p3$type_of_rnd_manpower))

cluster(data = Archivo.2.para.muestreo,clustername = c("year"),size = 3, method = "srswor", description = T)
cluster(data = Archivo.2.para.muestreo,clustername = c("sector"),size = 3, method = "srswor", description = T)
cluster(data = Archivo.2.para.muestreo,clustername = c("type_of_rnd_manpower"),size = 3, method = "srswor", description = T)




