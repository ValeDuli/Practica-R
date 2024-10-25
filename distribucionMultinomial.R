#----
#DISTRIBUCION MULTINOMIAl
#comando en R

#dmultinom(x=c(2,2,1),prob=c(0.5,0.3,0.2))

#x:Un vector que representa la frecuencia de cada resultado.
#prob: Un vector que representa probabilidad de cada resultado.
#(the sum must be 1)

?dmultinom

#rmultinom
rmultinom(10, size = 12, prob = c(0.1,0.2,0.8))

#----
#EJEMPLO 1
#5 bolas rojas, 3 verdes y 2 azules
#Si seleccionamos 5(n=5), Que probabilidad hay de:
#Cogen 2 rojas, 2 verdes y 1 azules

dmultinom(x=c(2,2,1), prob = c(0.5,0.3,0.2))
0.135

#----
#Ejemplo 2
#El entrenafor de un equipo de baloncesto opina que los jugadores A,B,C
#tienen similares aptitudes para ser titulares del equipo del equipo en las posiciones de base
#Asi, determina que juegan el mismo numero de minutos cada partido.
#Se sabe que el 40% de las canastas son de C, mientras que A y B
#consiguen un 30% de encestes
#Calcula la posibilidad de que en un partido con 9 encestes de dos puntos,
#A consiguiera dos, B tres y C cuatro
#n=9 #proba(0.30,0.30,0.40) x1=2,x2=3,x3=4
dmultinom(x=c(2,3,4), prob = c(0.3,0.3,0.4))
0.07838208

#----
#Ejemplo3
#En una eleccion tripartita para alcalde, el candidato A recibe el
#10% de los votos, el canditado B recibe el 40% de los votos y el 
#candidato C recibe el 50% de los votos. Si seleccionamos una muestra
#aleatoria de 10 votantes, ¿Cual es la probabilidad de que 2 votaron por
#el candidato A, 4 votaran por el candidato B,¡Cuantos votaron por el candidato C?

dmultinom(x=c(2,4,4), prob = c(.1,.4,.5))
0.0504

