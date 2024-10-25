#----
##  100 horas -- Promedio 8

#Definimos nuestra variable aleatoria -- λ=[x]=8,

#falle 1 en 25 horas

100/25
8/4

dpois(x, lambda)
dpois(1,2)

#fallen no mas de 2 en 50 horas

100/50
8/2

#P(0)+P(1)+P(2)
dpois(0,4)+dpois(1,4)+dpois(2,4)
0.2381033

#P(x<=2)
ppois(2,4)

#fallem al menos 10 en 125 horas
100/125
8/0.8

#P X>=10
# = 1 - P(X<10)

1-ppois(9,10)

#----

#El numero de medio de enfermos recibidos cada 10 minutos en un 
#centro sanitario entre las 10 y las 15 horas es 1.8.
#Suponiendo que dicho numero de enfermos sigue una distribucion de Poison

#Calcula la probabilidad de que entre las 12 horas y las 12 horas y 10 minutos 

#definimos variables y distribucion

#x=NUMEROS DE ENFERMOS RECIBIDOS EN 10 MINUTOS
#LMABDA

#1)Ningun enfermo
dpois(0,1.8)

#2) Exactamente 2 enfermos P[x=2]
dpois(2,1.8)
0.2677842

#3) Mas de 8 enfermos P[x>=9]

#=1-P[x<=8]
ppois(8,1.8)
1-0.9998903
1-ppois(8,1.8)

#4) Entre 8 y 15 clientes (ambis inclusive) P[8<=x<=15]

#=P[X<=15]-P[X<=7]

ppois(c(15,7),1.8)
1.0000000-0.9994385
#separado
ppois(15,1.8)
ppois(7,1.8)

#6) Generar una muestra de 20 valores aleatorios de la distribucion

r_p<-rpois(20,1.8)
hist(r_p)

#----
#Ejemplo goles

#Saber la probabilidad de que el partido entre dos equipos rivales sea de 2-1
#La media de goles del primer equipo es de 2.5
#La media de goles del segundo equipo es de 1.8

P_equipo1<-dpois(2,2.5) #P X=2 Equipo 1
P_equipo2<-dpois(1,1.8) ##P X=1 Equipo 2
P_equipo1*P_equipo2

ppois(3,2.5) #P x<=3

##Probabilidades de goles conjuntos, tambien varios resultados...







