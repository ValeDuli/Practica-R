#----
#DISTRIBUCION GAMMA
#Usaremos las siguientes funciones para trabajar con la distribucion gamma en R
#shape=forma rate=lamda o beta inversa scale=1/rate
#shape=alfa #scale=Beta #lambda o b-1=1/beta

dgamma(x,shape,rate,scale)#Funcion de densidad con una determinada escala y forma
pgamma(q,shape,rate,scale)#Funcion de distribucion acumulada
qgamma(p,shape,rate,scale)#Funcion inversa o cuantil
rgamma(n,shape,rate,scale)#numero aleatorios en base a gamma

#----
?dgamma

#How to use rgamma()
#Semilla para que salgan los mismos valores
set.seed(0)
#Generamos una muestra de 1000 numeros aleatorios en base a distribucion GAMMA
x<-rgamma(n=1000, shape = 5, scale = 1/3)
#Creamos un histograma
hist(x)

set.seed(0)
x<-rgamma(n=1000,shape=5,rate = 3)
hist(x)

#Grafico distribucion gamma en r
x=0:10
curve(dgamma(x,2,scale = 1),xlab="x",ylab="f(x;a,β)",0,10,col=3,lwd=3,main="Grafico distribucion Gamma")
curve(dgamma(x,1,scale = 0.5),xlab="x",ylab="f(x;a,β)",0,10,col=5,lwd=3,add = TRUE)
curve(dgamma(x,11,scale = 0.25),xlab="x",ylab="f(x;a,β)",0,10,col=7,lwd=3,add = TRUE)
legend("topright",c("a=2,β=1", "a=1,β=0.5", "a=11,β=0.25"),col=c(3,5,7),lwd = 3, inset = 0.05)

curve(dgamma(x,2,1),xlab = "x",ylab = "f(x;a,β)",0,10,col=4,lwd=3,main="Grafico distribucion Gamma a=2,β=1")
curve(pgamma(x,2,1),xlab = "x",ylab = "f(x;a,β)",0,10,col=4,lwd=3,main="Grafico de la funcion de distribucion Gamma a=2,β=1")

#----
#Ejemplo:Suponga que el tiempo, en
#horas, que toma reparar una bomba es una variable aleatoria x que
#tiene una distribucion gamma con parametros a=2 y
#b=1/2. ¿Cual es la probabilidad de que en el
#siguiente servicio:
  #A)tome cuando mucho 1 hora reparar la bomba?
  #P(X<=1)
#el propio ejercicio nos da a=2 y b(escala)=1/2
pgamma(1, shape=2, scale=1/2)
pgamma(1, shape=2, rate=2)

  #B)Al menos se requieren 2 horas para reparar la bomba?
  #P(X>=2) ó
  #1-P(X<=2)

pgamma(2,shape = 2,scale = 1/2)#P(x<=2)
1-0.9084218
1-pgamma(2,shape = 2,scale = 1/2)

  #C)que tarde entren 2 y 1
  #P(2<x<1)
pgamma(2,shape = 2,scale = 1/2)-pgamma(1, shape=2, scale=1/2)

#----
#Funcion inversa...Si nos dan la probabilidad en vez de q
#^¿Cuanto tiempo como mucho tardara en reparar la bomba para una probabilidad
#Acumulada de 0.5940
#p=0.5939942
qgamma(0.5939942, shape = 2, scale = 1/2)
#Si la probabilidad es de 0.09157 cuantas horas al menos se requieren?
1-0.09157
qgamma(0.90843,shape = 2,scale = 1/2)

#----
#Ejemplo 2
#En una ciudad el consumo de energia diario en mollores de kilovatios hora
#puede considerarse como una variable con distribucion gamma
#de parametros a=3,b-1=0.5
#¿Que probabilidad hay de que se consuma entre 3 y 8 mill de kw/hora
#P(3<x<8)
#aqui para sacar la escala tenemos que hacer 1/0.5
1-pgamma(10,shape = 3,scale = 2)
pgamma(10,shape = 3,rate = 1/2)
pgamma(8,shape = 3,scale = 2)-pgamma(3,shape = 3,scale = 2)
#b)Si la planta cap 10 m/h.. ¿prob de que en un dia sea insuficiente?
#P(X>10)
1-pgamma(10,shape = 3,scale = 2)
1-pgamma(10,shape = 3,rate = 1/2)

