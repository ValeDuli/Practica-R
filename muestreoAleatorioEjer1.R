library(dplyr)
library(sampling)

set.seed(3)
Archivo.1.para.muestreo
muestra_aleatoria<-slice_sample(.data=Archivo.1.para.muestreo,n=10,replace = F)
muestra_aleatoria

data.frame(table(Archivo.1.para.muestreo$year))
data.frame(table(Archivo.1.para.muestreo$type))
data.frame(table(Archivo.1.para.muestreo$quantity))

muestra_est_np1<-strata(data = Archivo.1.para.muestreo,stratanames = c("year"),size=c(3,2,4,1,5),method = "srswor")
muestra_est_np1
muestra_est_np2<-strata(data = Archivo.1.para.muestreo,stratanames = c("type"),size=c(3,2,4,1,5,3,2,4,1),method = "srswor")
muestra_est_np2

nrow(Archivo.1.para.muestreo)
n2015<-sum(with(Archivo.1.para.muestreo,year=="2015"))/nrow(Archivo.1.para.muestreo)
n2016<-sum(with(Archivo.1.para.muestreo,year=="2016"))/nrow(Archivo.1.para.muestreo)
n2017<-sum(with(Archivo.1.para.muestreo,year=="2017"))/nrow(Archivo.1.para.muestreo)
n2018<-sum(with(Archivo.1.para.muestreo,year=="2018"))/nrow(Archivo.1.para.muestreo)
n2019<-sum(with(Archivo.1.para.muestreo,year=="2019"))/nrow(Archivo.1.para.muestreo)
muestra_est_p1<-strata(data = Archivo.1.para.muestreo,stratanames = c("year"),size = c(round(19*n2015),round(19*n2016),round(19*n2017),round(19*n2018),round(19*n2019)),method = c("srswor"))
muestra_est_p1
data.frame(table(muestra_est_p1$year))

n1<-sum(with(Archivo.1.para.muestreo,type=="Bottling Warehouse"))/nrow(Archivo.1.para.muestreo)
n2<-sum(with(Archivo.1.para.muestreo,type=="Container Freight Warehouse"))/nrow(Archivo.1.para.muestreo)
n3<-sum(with(Archivo.1.para.muestreo,type=="Duty Free Shop"))/nrow(Archivo.1.para.muestreo)
n4<-sum(with(Archivo.1.para.muestreo,type=="Excise Factory (liquor, tobacco, motor vehicles, CNG)"))/nrow(Archivo.1.para.muestreo)
n5<-sum(with(Archivo.1.para.muestreo,type=="Licensed Warehouse"))/nrow(Archivo.1.para.muestreo)
n6<-sum(with(Archivo.1.para.muestreo,type=="Petroleum Licensed Warehouse"))/nrow(Archivo.1.para.muestreo)
n7<-sum(with(Archivo.1.para.muestreo,type=="Petroleum Refinery"))/nrow(Archivo.1.para.muestreo)
n8<-sum(with(Archivo.1.para.muestreo,type=="Petroluem Bonded Warehouse"))/nrow(Archivo.1.para.muestreo)
n9<-sum(with(Archivo.1.para.muestreo,type=="Zero GST Warehouse"))/nrow(Archivo.1.para.muestreo)
muestra_est_p2<-strata(data = Archivo.1.para.muestreo,stratanames = c("type"),size = c(round(19*n1),round(19*n2),round(19*n3),round(19*n4),round(19*n5),round(19*n6),round(19*n7),round(19*n8),round(19*n9)),method = c("srswor"))
muestra_est_p2
data.frame(table(muestra_est_p2$type))

cluster(data = Archivo.1.para.muestreo,clustername = c("year"),size = 4, method = "srswor", description = T)
cluster(data = Archivo.1.para.muestreo,clustername = c("type"),size = 3, method = "srswor", description = T)
cluster(data = Archivo.1.para.muestreo,clustername = c("quantity"),size = 5, method = "srswor", description = T)
