##########

#Distribucion normal en R

#----
#Ejemplo numeros aleatorios
R_normal<-rnorm(500,mean = 0, sd=1)
R_normal
hist(R_normal)
R_normal<-rnorm(500,mean = 2, sd=2.5)
hist(R_normal)
#----
#pnorm(q, mean=?,sd=?)
#qnorm(q, mean=?,sd=?)

#----
##Ejemplo 1
##El nivel de colesterol de una persona adulta sana sigue
#una Distribucion normal N(192,12)
#Calcula la probabilidad de que una persona tenga un nivel de colesterol:

#A) Superior a 200
#P(X>200)=1-P(X<=200)
1-pnorm(200, mean = 192,sd=12)
pnorm(200, mean = 192,sd=12)  #P X>200
1-0.7475075
#B) entre 180 y 220

#P(180<=X<=220)
#P[X<=220]-P[X<=180]
pnorm(c(220,180), mean = 192,sd=12)
0.9901847-0.1586553
0.8315294

#C)La cantidad minima de colesterol que tiene el 30 que mas tienen
#Percentil 70
qnorm(0.7,mean = 192,sd=12)
198.2928

#----
###Ejemplo 2
#La edad de un grupo de personas sigue una N(35,10)
#Calcula la prob de una persona al azar tenga

#A)Mas de 40 años --- P x > 40
# = 1-p(x<=40)
1-pnorm(40,35,10)

#B)Entre 23 y 47 años. P(23<x<47)
#P[x<=47]-P[x<=23]
pnorm(c(47,23),mean = 35, sd=10)
0.8849303-0.1150697
0.7698606

#C)Di entre que edades estara comprendido el 50% central de la distribucion
qnorm(0.30,mean = 35, sd=10 )
qnorm(0.70,mean = 35, sd=10 )

#----

