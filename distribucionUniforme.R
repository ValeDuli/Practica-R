#----
#Distribucion Uniforme en R

#?dunif
#dunif(x,min,max)=pdf(Funcion de densidad)
#punif(x,min,max)=cdf(Funcion de distribucion acumulada)
#runif(n,min=0,max=1)numeros aleatorios

dist_unif<-runif(1000,0,1)
dist_unif
hist(dist_unif)

#----
#EJEMPLO 1
#Un autobus llega a la parada de bus cada 20 minutos.
#Si llegas a la parada del autobus, ¿Cual es la probabilidad de que
#el autobus aparezca en 8 minutos o menos?
#Solucion
#Buscamos la probabilidad de que el autobus llegue en 8 minutos o
#De que forma usaremos punif ya que queremos la prob acumulada
#a=0
#b=20
punif(8,0,20)
#La probabilidad de que bus llegue en 8 minutos o menos de 0.4
#P(0<X<8)=0.4=(8-0)/20
8/20

#----
#Ejercicio 2

#Sabemos que el peso de las uvas se distribuye siempre en forma
#equiprobable entre 6 y 10 gramos. Determina la funcion de densidad
#del peso de las uvas y el peso medio de las uvas
dunif(x,6,10)

dunif(7,6,10)
dunif(8,6,10)
dunif(9,6,10)
dunif(2,6,10)

#f(x)=0.25 para 6<x<10
#      0   en otros casos
#E(x)<-a+b/2

(6+10)/2

#----
#Ejemplo 3
#la distribucion de un partido de basketball esta
#distribuida uniformemente entre 120 y 170 minutos
#¿Cual es la probabilidad que un partido seleccionado de manera
#aleatoria dure mas de 150 minutos?
#P(150<X<170)
punif(150,120,170)#hemos hecho la probabilidad acumulada hasya 150
1-punif(150,120,170)

