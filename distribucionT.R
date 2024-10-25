#-----
#Distribucion t student en R

#funciones que usaremos
?dt
#dt   -   densidad
#pt   -   distribution acumulada
#qt   -   quantile function
#rt   -   generador de numeros aleatorios

#----
#Ejemplos
#Econtrar el valor de la distribucion t de Student pdf
#en x=0 con 10 grados de libertad
dt(x=0,df=10)
dt(0,10)

#encontrar el valor de la distribucion t de Student pdf
#en x=2 con 15 grados de libertad
dt(2,15)

#grafico con dt
#1 creamos una secuencoa de 100 numeros entre -4 y 4
x<-seq(-4,4,length=100)
#2 crear un vector de valores que muestre la altura de la distribuciones 
#para cada valor de x, usando 20 grados de libertad
y<-dt(x=x,df=20)
#Grafico y añadimos los valores
plot(x,y,type = "l",lwd=2, axes = FALSE, xlab = "Valeria Duli", ylab = "", main="Distribucion t_student")
axis(1, at=-3:3, labels = c("-3s","-2s", "-1s","Media","1s","2s","3s"))
#Funcion de densidad acumulada(cdf)--
pt(x,df)  #por defecto devuelve el area a la izquiera de la distribucion
          #P[X<=x]
#si quieres medir el lado derecho puedes poner
pt(x,df, lower.tail = FALSE)
#Cual es la probabilidad de que una variable t de studen de 6 grados
#deja a la izquierda de -1,45:
#P[t6<=1.45]
pt(-1.45,6)
#Cual es la probabilidad acumulada a la derecha de 2,45,
#en una variable de t de student de 15 grados de libertad
#P[t15>=2.45]
pt(2.45,15) #P [t15<2.45]
1-pt(2.45,15)

#P(t9>-1.95)
pt(-1.95,9)
1-pt(-1.95,9)
1-0.04148336

#Cual es la probabilidad acumulada de una variable t de Student de 25 grados de libertad
#se encuentre entre 0.75 y 1.25
#P(0.75<t25<1.25)=
#P(t25<1.25)-P(t25<0.75)
pt(1.25,25)-pt(0.75,25)

#Funcion Cuartil
#Sera la inversa de la funcion de densidad acumulada
#Encuentra el valor de t del cuartil 95 de la distribucion t de estuden con 20 grados de libertad
qt(0.95,20)
pt(1.724718,20)#Compronacion con pt
qt(0.1,20)
pt(-1.325341,20)

##Numeros aleatorios
#Generar un vector de 100 variables con dist t y 15 grados de libertad
t_aleatorio<-rt(1000,500)
plot(t_aleatorio)
hist(t_aleatorio)

