#----
#DISTRIBUCION CHI CUADRADO
#Funciones

#dchisq - funcion dendidad
#pchisq - prob acumulada
#qchisq - funcion cuartil
#rchisq - numero aleatorios

#grafico con istribucion chi cuadrado 5 gl 20
curve(dchisq(x, df=5),from = 0, to=20, main=" Distribucion Chi Cuadrado")

#Calcular la probabilidad x < 1.2 en Distribucion CHI^2 con 4 gl
pchisq(1.2, df=4)

#Calcular prob x>3.4 --- chi^2 con 6 gl
#1-P[x<3.4]
1-pchisq(3.4, df=6)
#o
pchisq(3.4, df=6)
1-0.2427768

#----
#Ejemplo intervalo P(x1< chi^2<x2)
#Siendo x1<x2
#P(x1<CHI^2<x2)=P(chi^2<x2)-p(chi^2<x1)
#ejemplo grados libertada comprendida entre 3.4 y 5.6
#P(3.4<CHI^2<5.6)
pchisq(3.4,df=8)
pchisq(5.6,df=8)
pchisq(5.6,df=8)-pchisq(3.4,df=8)

#----
#Funcion inversa o cuartil
#Cual es el valor de x de una distribucion chi-cuadrada de 6 grados de libertad
#que deja a su izquiera una probabilidad del 80%
qchisq(p=0.8,df=6)
#¿Cual es el valor de x que en una chi^4 de 4 grados de libertad
#que deja a su izquiera una probabilidad de 0.1219014
qchisq(p=0.1219014,df=4)

#----
#Ejemplo de distribucion chi^2 con numeros aleatorios
set.seed(0)
#Generamos 1000 valores aleatorios Chi-Cuadrado dist con df=5
chi_aleatoria<-rchisq(n=1000,df=10)
head(chi_aleatoria)
#historama
hist(chi_aleatoria)
