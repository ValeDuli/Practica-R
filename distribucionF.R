#----
#DISTRIBUCION F
#CALCULAR LOS VALORES CRITICOS
#Usaremos la funcion q(f) que es la fincion cuantil
#Dependiendo de si buscamos los valores critocs, la probabilidad acumulada
#o el pvalue pues elegimos una funcion. En este cso usamos la funcion cuantil

qf(p,df1,df2,lower.tail = TRUE)
?qf

#p:El nivel de significacion a utilizar
#df1: Los grados de libertad del numerador
#df2: Los grafos de libertad del denominador

#lower.tail=TRUE o FALSE
  #Si TRUE se devuelve la probabilidad a la izquierda de p en la distribucion D
  #Si FALSE se devuelve la probabilidad de la derecha


#----
#Ejemplo
#Imagina que quieres encontrar el valor critico de F para un nivel de 
#significancia de 0.05, con gl del numerador 1 y denominador =8

qf(p=0.05, df1 = 1, df2 = 8, lower.tail = FALSE)
qf(p=0.95, df1 = 1, df2 = 8, lower.tail = TRUE)
#o Por tanto el valor critico de F para una significancia de 5%, con
#1gl en numerador y 8 gl en denominador es 5.317655~5.32
#Entonces con ese 5.3176 si estamos haciendo alguna prueba de hipotesis
#ya podriamos comparar el estadistico de la prueba F con ese valor critico 5.317655
#Si estadistico F>5.317655 los resultados son significativos
#Ahora mismo ejemplo al 0.01
qf(p=0.01,df1=1,df2 = 8,lower.tail = FALSE)
#Logicamente al ser mas restrictivo con el valor de la probabilidad (alfa mas pequeño)
# el valor critico F aumenta, ya que nos desplazamos mas a la derecha

#----
#Ejemplo con alfa 0.02
qf(p=0.02, df1 = 1, df2 = 8, lower.tail = FALSE)
#Nivel Significancia  #Valor Critico
#       0.05            5.317655
#       0.02            8.389477
#       0.01            11.25862

#----
#2. Como calcular el valor P de un estadistico F en R
#Para encontrar el valor p asicuado con una estadistica F en R, puede usar el siguente comando
#pf(valor_esta_f, df1,df2,lower.tail=FALSE) Es decir, la fincion de distribucion
#valor_estar_f=q=valor de F estadistico

#----
#Ejemplo
#Encontrar el pvalue asociado con un estadistico F=5.317655
pf(q=5.317655, df1=1, df2=8, lower.tail = FALSE)
pf(q=8.389477, df1=1, df2=8, lower.tail = FALSE)
pf(q=11.25862, df1=1, df2=8, lower.tail = FALSE)
pf(q=15, df1=2, df2=20, lower.tail = FALSE)

#----
#Ejemplo con mofrlo de regresion lineal
#--Creacion del Modelo Lineal
#install.packages("quantmod")
library(quantmod)
#install.packages("tseries")
library(tseries)
#install.packages("forecast")
library(forecast)
#install.packages("TSA")
library(TSA)
#install.packages("Quandl")
library(Quandl)

#1. Descargamos las variables que vamos a usar
getSymbols("INDPRO", src="FRED") #Industrial Production Index
getSymbols("UMCSENT", src="FRED") #University of Michigan: Consumer sentiment
getSymbols("FEDFUNDS", src="FRED") #Tasa interes fondos federales
getSymbols("CCRETT01USM661N", src="FRED") #Tipo de Cambio efectico IPC
getSymbols("M2NS", src="FRED") #Stock de dinero M2
getSymbols("PAYEMS", src="FRED") #Des trabajadores no rurales
getSymbols("BOPGSTB", src="FRED") #Balance cuenta, diferencia entre exp e imp
getSymbols("EXUSUK", src="FRED") #GBP mensual

#Predecir GBPUSD--1 mes

prod=INDPRO["2001-01::2019-12"]
sent=UMCSENT["2001-01::2019-12"]
Fedfunds=FEDFUNDS["2001-01::2019-12"]
GBP=EXUSUK["2001-01::2019-12"]
credit=CCRETT01USM661N["2001-01::2019-12"]
pay=PAYEMS["2001-01::2019-12"]
money=M2NS["2001-01::2019-12"]
trade=BOPGSTB["2001-01::2019-12"]

plot(GBP,type="l")

#Creamos una tabla
t_variables=data.frame(merge(sent,Fedfunds,GBP,credit,pay,money,trade))

#Creamos el modelo
Mod_Macro=lm(EXUSUK~UMCSENT+FEDFUNDS+CCRETT01USM661N+PAYEMS+M2NS+BOPGSTB, data = t_variables)
summary(Mod_Macro)

#Para buscar el P VALUE podremos
pf(q=342.3,df1 = 6, df2=221,lower.tail = FALSE)

Mod_Macro_2=lm(EXUSUK~UMCSENT, data = t_variables)
summary(Mod_Macro_2)

pf(q=20.65, df1=1, df2=226, lower.tail = FALSE)







