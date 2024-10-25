#-----
#Distribucion Geometrica en R
#Funciones:
            #dgeom, pgeom, qgeom, rgeom
?dgeom

#dgeom(x, prob)=devuelve el valor de la funcion de densidad de
#probabilidad geometrica

#x: numero de fallas antes del primer exito
#prob: probabilidad de exito en un ensayo dado

#pgeom(q,prob)=funcion de distribucion acumulada
#qgeom(p, prob)#PERCENTIL
#rgeom(n,prob)#simulaciones

#----
#Ejemplo 1
#Un futbolisto tiene una tasa de acierto en panaltis del 80% por año
#¿Que probabilidad hay que este año marque por primera vez en su quinto 
#penalti?, Es decir fallaria 4 antes de acertar
  #Seria Sea X el numero de penaltis que necesita para
  #marcar su promer gol. Luego X~G(0.8).
  #P(X=k)=(1-p)^k*p
  #Siendo k el nimero de fallos anres del primer acierto
  #cuidando que a veces veis k=x-1
  #P(X=4)
dgeom(4,0.8)
0.00128

#----
#Ejemplo 2
#Un periodista esta esperando afuera de una bilioteca para
#preguntarle a la gente si apoya cierta ley
#La probabilidad de que una determinada persona apoye la ley es de p=0,2.
#¿Cual es la probabilidad de que el periodista tenga que hablar
#con al menos 3 personas para encontrar a alguien que apoye la ley?

#por tanto aqui buscamos la probabilidad acumulada
pgeom(q=3,prob = 0.2)
0.5904
#es lo mismo que la suma de su probabilidad individual
dgeom(0,0.2)+dgeom(1,0.2)+dgeom(2,0.2)+dgeom(3,0.2)
0.5904

#----
#Ejemplo 3 = IGUAL QUE EL 2 PERO...
#¿Cual es la probabilidad de que el investigador tebga que hablar con
#mas de 5 personas para encontrar a alguien que apoye la ley?
#P(X>5)

pgeom(q=5,prob = 0.2)#5 o menos
1-pgeom(q=5,prob = 0.2)

#----
#Ejemplo 4
#¿Cuantos "fracasos" tendria que experimentar el investigador para estar en el 
#percentil 90 del numero de fracasos antes del primer exito?
qgeom(p=0.9, prob = 0.2)
qgeom(p=0.4, prob = 0.2)

