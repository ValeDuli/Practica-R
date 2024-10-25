#----
### Modelo Teorico

# La distribucion binomial mide el numero de exitos en una
# determinada secuencia de "n" ensayos independientes,
# con la probabilidad fija de ocurrencia (p)

# Funcion Binomial
# X- B(n,p)
# p=exito
# 1-p=fracaso

dbinom(x, size, prob) #Funcion masa binomial
pbinom(q, size, prob) #Funcion de distribucion binomial
qbinom(p, size, prob) #Cuartiles
rbinom(n, size, prob) ##Numeros aleatorios

#------------

##  P(x)=0

## De cada dos veces que un equipo de futbol juega contra su ribal,
#el equipo gana 7 veces

#n=10
#p=0.7

#¿Cual es la probabilidad de que gane 1 vez?
dbinom(1,10,0.7)

#¿Y de que ganen los dos las mismas veces?
dbinom(5,10,0.7)

#¿Y que gane entre 1 y 3 veces incluidos los dos?
p_1<-dbinom(1,10,0.7)
p_2<-dbinom(2,10,0.7)
p_3<-dbinom(3,10,0.7)

p_1+p_2+p_3

x<=3

pbinom(3,10,0.7)

#Cual es la probabilidad de que el equipo rival gane al menos 4 veces?

#p(x)<6

pbinom(5,10,0.7)


#----
# Ejemplo 2

##  Se han comprobado que la probabilidad de 
#que se funda la lampara de un televisor en un mes es 0.02.
#Si el televisor tiene 5 años

#60mese=5años

#@ ninguna rotura

dbinom(0,60,0.02)

#exactamente haya 5 roturas

# P[X=5]

dbinom(5,60,0.02)

#al menos haya 5 roturas

# P[X≥5]

# P[X≥5]=1-P[X≤4].

1-pbinom(4,60,0.02)

#Haya entre 5 y 25 roturas( ambas inclusive)

# P[5≤X≤25]
# P[5≤X≤25]= P[X≤25] - P[5≤X] = F(25)-F(4)

pbinom(c(4,25),60,0.02)

1.00000000-0.99297547

#g) Calcular el valor de la variable tal que deja a su derecha
# el 32% de las observaciones

#1-0.32=0.68

qbinom(0.32,60,0.02)

#h) Generar una muestra de 30 valores aleatorios de esta distribucion.

rbinom(100,60,0.2)

#----
## Estudiar rentabilidad divisa








