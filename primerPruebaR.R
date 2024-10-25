#------------------
#   Ejercicio 1   -
#------------------
C<-36
F<-(C*9/5)+32
F


#----------------
#   Numericos   -
#----------------
positivos <- 20

#Operaciones basicas
positivos+10
positivos-10
positivos/10
positivos**3

#Modulo
positivos%%5
positivos%%6
positivos%%7

#Enteros negativos
negativos<--15
negativos*-1
negativos**2

# Con decimales
decimal<-2.71828
ceiling(decimal)
floor(decimal)
trunc(decimal)


#------------------
#   Ejercicio 2   -
#------------------
numero<-2.71828
trunca<-(trunc(numero*100))/100
trunca


#--------------
#   Strings   -
#--------------

usuario <- "RobinWasHere"

#Cuantos caracteres tiene el nombre de usuario
nchar_usuario <- nchar(usuario)
nchar_usuario

#Convertir a mayusculas o minusculas todo el string
tolower(usuario)
toupper(usuario)

#Obtener un pedazo (substring) del string
substring(usuario,1,5)
substring(usuario,6,nchar_usuario)

#Sustituir valores del string
sub("e","E",usuario)
gsub("e","E",usuario)
sub("Robin", "Valeria", usuario)

#Concatenar dos o mas strings
paste("Y en la pared solo decia:", usuario, sep="")


#------------------
#   Ejercicio 3   -
#------------------

cadena1<-"Don Draper lucha por mantenerse en la cima del grupo Sterling-Cooper"
nombre<-sub("Don Draper", "Richard Whitman", cadena1)
nombre
cadena2<-paste("En la serie Madmen:", nombre, sep=" ")
cadena2


#--------------
#   Logicos   -
#--------------

#Unicos valores Posibles
TRUE
FALSE

#Calificacion en el primer examen
calificacion_examen1<-8.5

#Obtuvimos 10
calificacion_examen1==10

#Aprobamos el examen
calificacion_examen1>=6

#Obtuvimos calificacion > 6 Y 8
calificacion_examen1>6&calificacion_examen1<8

#Realizamos un segundo examen
calificacion_examen2<-5.9

#Tenemos algun examen reprobado
calificacion_examen1<6|calificacion_examen2<6

#Validar la no igualdad
calificacion_examen1!=calificacion_examen2

#Nombre de usuario
usuario<-"Robina"

#validar el numero de caracteres
val_numchar<-nchar(usuario)>10

#Validar que no contenga una palabra en particular
val_name<-!grepl("Rob",usuario)

#Validar que no comience con .
val_punto<-substr(usuario,1,1)!="."

#validar que cumpla con las tres condiciones anteriores
val_numchar&val_name&val_punto

#Sumando valores logicos
TRUE==1
FALSE==0
TRUE+TRUE+FALSE+FALSE+TRUE


#------------------
#   Ejercicio 4   -
#------------------
(TRUE&TRUE)| (FALSE&TRUE)

usuario<-"RIOT Mictlan"
(nchar(usuario)<10)&(!grepl("RIOT",usuario))&((usuario!="ElVaipa")&(usuario!="Ixtli"))


#----------------
#   Vectores    -
#----------------

#----Definicion de Vectores

#Vector numerico
vistas<-c(8321,2974,4932,4889,7433,6651)

#Vector de caracteres
nombre<-c("Video1","Video2","Video3","Video4","Video5","Video6")

#----Operaciones Basicas

#Cuantos videos hay?
length(vistas)

#Cuantas vistas tiene el video mas visto?
max(vistas)

#Cuantas vistas tiene el video menos visto?
min(vistas)

#Cuantas vistas, en promedio, tienen los videos?
mean(vistas)

#Total de vistas
sum(vistas)

#Operaciones aplicadas
vistas+1000
vistas/500
log(vistas)
nchar(nombre)

#Subimos un nuevo video al canal
vistas<-c(vistas,5600)
nombre<-c(nombre,"vista7")

#Ponerle un nombre al vector
names(vistas)<-nombre

#Ordenar un vector numerico
sort(vistas)
?sort
sort(vistas, decreasing = TRUE)


#----Condiciones Logicas sobre Vectores

#Que videos tienen mas de 6000
vistas>6000

#Cuantos videos hay con mas de 600
sum(vistas>6000)

#Algun video tiene mas de 8000
any(vistas>8000)
any(vistas>10000)

#Todos los videos tienen mas de 2000
all(vistas>2000)
all(vistas>5000)

#Que videos tienen menos de 5000 vistas
which(vistas<5000)

#----Como obtener un subconjunto de un vector

#Especificando cuales quiero (Enteros positivos)
vistas[c(2,4)]
vistas[3]

#Especificando cuales no quiero (Enteros negativos)
vistas[-4]
vistas[-c(2,4)]

#Especificando cuales quiero (Valores logicos)
vistas[c(FALSE, TRUE, FALSE, TRUE, FALSE,FALSE,FALSE)]
vistas[vistas>7000]
vistas[vistas>4000 & vistas<5000]

#Mediente el nombre de la entrada
vistas[c("Video2","Video4")]

#Como modificar una o mas entradas de un vector
vistas[1]<-50
vistas[c(2,3,4)]<-c(600,700,800)
vistas[vistas>7000]=7000

#---- Utilizando los vectores como conjuntos

#Videojuegos de un amigo y yo
yo<-c("GTA V","Mortal Kombat","Zelda","Skyrim")
amigo<-c("Mario Kart","Zelda","Devil May Cry","GTA V")

#Que videojugos tenemos entre los dos?
c(yo,amigo)
union(yo,amigo)

#Que videojuegos tenemos en comun?
intersect(yo,amigo)

#Que videojuegos tengo yo que no tengo el?
setdiff(yo,amigo)

#Tenemos los mismos videojuegos?
setequal(yo,amigo)

#Mi amigo tiene el juego de zelda?
"Zelda" %in% amigo

#Mi amigo tiene los videojuegos de Age of Empires o Mario Kart?
c("Age of Empires", "Mario Kart") %in% amigo


#---Otra manera de generar vectores (Determinista)

#Utilizando el operador :
1:50
20:1
-5:5

#Utilizando la funcion seq
seq(from=0, to=50, by=0.5)

#Apartir de un caracter
juego<-"Mortal Kombat"
split<-strsplit(juego,"")[[1]]
class(split)

any(split=="o")

#----Otra manera de generar vectores (Aleatoria)

#Obteniendo muestras
resultados<- c("Victoria","Derrota")
sample(resultados, size=10, replace=TRUE, prob = c(0.25,0.75))

#Distribuciones de probabilidad
runif(n=20,min=0,max = 2)
rnorm(n=20,mean=15,sd=2)
rbinom(n=20, size = 1, p=0.5)
rbinom(n=20, size = 5, p=0.5)

#Fijamos la semilla
set.seed(123)
runif(n=1)

#----Vectores a partir de diferentes de datos?

ejemplo<-c(3.1415,TRUE,"God of War")


#------------------
#   Ejercicio 5   -
#------------------

numeros<-1:1000000
sum(numeros%%6==0 & numeros%%8==0)

set.seed(123)
compra<-rnorm(n=10000,mean = 5000,sd=1000)
compra[c(435,678)]
sum(compra>8000)
max(compra)
min(compra)
sum(compra>=4000 & compra<=6000)/length(compra)

string<-"NoobSlayer9"
any(strsplit(string,split = "")[[1]] %in%0:9)
all(strsplit(string,split = "")[[1]] %in%0:9)


#------------------
#   Conversion    -
#------------------

#De numerico a caracter
as.character(5.6)
as.character(-5.46)

#De numerico a logico
as.logical(56)
as.logical(100)
as.logical(1)
as.logical(-10)
as.logical(0)

#----De logico a caracter a numerico

#De logico a caracter
as.character(TRUE)
as.character(FALSE)

#De logico a numerico
as.numeric(TRUE)
as.numeric(FALSE)

#----De caracter a logico a numerico

#De caracter a numerico
as.numeric("244")
as.numeric("Mate")

#De caracter a logico
as.logical("TRUE")
as.logical("Mate")

#----En un vector
vec<-c("1","2","3","4","5")
as.numeric(vec)


#------------------
#   Condiciones   -
#------------------

#Primer condicional
condicion<-FALSE
if(condicion){
  print("Esto se imprimira si la condicion es TRUE")
}else{
  print("Esto se imprimira si la condicion es FALSE")
}

#Calculando el rango de un ajedrista
elo<-30
if(elo>=750){
  rango<-"Gran Maestro"
}else if(elo>=500){
  rango<-"Maestro"
}else if(elo>250){
  rango<-"Profesional"
}else{
  rango<-"Novato"
}

#IF ElSE
numeros<-1:10
ifelse(numeros%%2==0,"par","impar")


#----------------
#   Funciones   -
#----------------

#----Funcion que eleve un numero al cuadrado
cuadrado<-function(num){
  return(num**2)
}
cuadrado(10)
cuadrado(-2)

#----Funcion que eleve un numero a un exponente
exponente<-function(num,k){
  return(num**k)
}
exponente(2,4)
exponente(num=3,k=2)
exponente(k=2,num=3)
exponente(2,3)
exponente(num=10)#Da error por falta de un argumento

#----Funcion que convierta de celcius a fahrenheit
cToF<-function(c){
  return(c*9/5+32)
}
cToF(25)

#----Funcion que trunque un numero a k decimales


#----Manejo de un semaforo
actualizo_semaforo<-function(actual){
  if(actual=="verde"){
    siguiente<-"amarillo"
  }else if(actual=="amarillo"){
    siguiente<-"rojo"
  }else if(actual=="rojo"){
    siguiente<-"verde"
  }else{
    stop("Color no valido")
  }
  return(siguiente)
}
actualizo_semaforo(actual = "verde")
actualizo_semaforo(actual = "amarillo")
actualizo_semaforo(actual = "rojo")
actualizo_semaforo(actual = "morado")

#----Cuenta vocales
cuenta_vocales<-function(string){
  may<-toupper(string)
  arr<-strsplit(may,"")[[1]]
  val_a<-sum(arr=="A")
  val_e<-sum(arr=="E")
  val_i<-sum(arr=="I")
  val_o<-sum(arr=="O")
  val_u<-sum(arr=="U")
  return(val_a+val_e+val_i+val_o+val_u)
}
cuenta_vocales("Machine Learning")
cuenta_vocales("Hola Mundo")
cuenta_vocales("PROGRAMACION")
cuenta_vocales("Python")

#----Mover punto
mueve_punto<-function(ini){
  dado<-sample(1:6,1)
  fin<-dado+ini
  if(fin>20){
    aux<-fin-20
    fin<-(20-aux)
  }
  return(paste("Posicion inicial: ", ini,", Posicion Final: ",fin,sep=""))
}
mueve_punto(19)

mueve_punto2<-function(inicial){
  dado1<-sample(1:6,size=1)
  dado2<-sample(1:6,size=1)
  final<-inicial+2*dado1-dado2
  
  return(paste0("Posicion inicial: ",inicial,", Posicion final: ",final))
}
mueve_punto2(12)

#----Determinar siglo
siglo<-function(year){
  if(year>=1&year<=100){
    return(1)
  }else if(year>=101&year<=200){
    return(2)
  }else if(year>=201&year<=300){
    return(3)
  }else if(year>=301&year<=400){
    return(4)
  }else if(year>=401&year<=500){
    return(5)
  }else if(year>=501&year<=600){
    return(6)
  }else if(year>=601&year<=700){
    return(7)
  }else if(year>=701&year<=800){
    return(8)
  }else if(year>=801&year<=900){
    return(9)
  }else if(year>=901&year<=1000){
    return(10)
  }else if(year>=1001&year<=1100){
    return(11)
  }else if(year>=1101&year<=1200){
    return(12)
  }else if(year>=1201&year<=1300){
    return(13)
  }else if(year>=1301&year<=1400){
    return(14)
  }else if(year>=1401&year<=1500){
    return(15)
  }else if(year>=1501&year<=1600){
    return(16)
  }else if(year>=1601&year<=1700){
    return(17)
  }else if(year>=1701&year<=1800){
    return(18)
  }else if(year>=1801&year<=1900){
    return(19)
  }else if(year>=1901&year<=2000){
    return(20)
  }else if(year>=2001&year<=2100){
    return(21)
  }
}
siglo(1705)
siglo(1900)
siglo(1601)
siglo(2000)
siglo(89)

siglo2<-function(year){
  ceiling(year/100)
}
siglo2(1705)
siglo2(1900)
siglo2(1601)
siglo2(2000)
siglo2(89)

#----Medida de Stanton
set.seed(1341)
muestra<-sample(1:7,size = 20,replace = TRUE)

stanton_measure<-function(muestra){
  n<-sum(muestra==1)
  sum(muestra==n)
}
stanton_measure(c(2,3,1,4,1))
stanton_measure(c(1,1,1,2))
stanton_measure(c(1,4,1,3,1,2,1,8,4,4))

#----Es primo
is_prime<-function(n){
  if(n==2){
    return(TRUE)
  }
  all(n%%2:sqrt(n)!=0)
}
is_prime(29)
is_prime<-Vectorize(is_prime)
is_prime(c(2,3,4))

sum(is_prime(1:1000000))

#----Funcion que verifique la validez de un usuario
usuario_valido<-function(user){
  val_long<-nchar(user)<10
  val_riot<-!grepl("RIOT",user)
  val_ocupados<-!user%in%c("ElVaipa","Ixtli")
  validacion<-val_long&val_riot&val_ocupados
  return(validacion)
}
usuario_valido(user="Miclantecuhli3")
usuario_valido(user = "ElJOJO")

#----Validaciones sobre el input de una funcion


#--------------
#   Ciclos    -
#--------------

#----Ciclo for
for(i in 1:10){
  texto<-paste0("Iteracion: ",i)
  print(texto)
}

for(i in letters){
  print(i)
}

#----Ciclo while
numero<-5
while(numero<=10){
  print("Aqui seguimos")
  numero<-numero+1
}

#----Factoria


#----Raiz digital


#----Profundidad


#-------------
#   Listas   -
#-------------

#Que resuelve una lista
c(3.1416,TRUE,"God of War")
lista<-list(3.1416,TRUE,"God of War")

#Asignando nombre a las entradas
lista_nombrada<-list(numero=3.1416,
     logico=TRUE,
     caracter="God of war")

#Obteniendo entradas de una lista
lista[1]
lista[c(1,2)]
lista[[1]]*2
lista_nombrada$numero*2

#-----Agregando entradas de una lista
#Usando $
lista_nombrada$vector<-c(1,2,3)

#Por posicion
lista[[4]]<-c(1,2,3)


#----------------
#   Dataframe   -
#----------------

#----Como definir un data frame
series<-data.frame(
  nombre=c("Arcane", "Mad Men", "The Office", "Invicible","Seinfeld"),
  imdb=c(9.4,8.5,8.9,8.7,8.8),
  episodios=c(10,92,188,13,173),
  concluida=c(FALSE,TRUE,TRUE,FALSE,TRUE)
)

#Exportacion a cvs
write.csv(series, file="C:/Users/valer/OneDrive/Documentos/Diplomado Ciencia de Datos/R/series.csv", row.names = FALSE)

#-----Cargar un data frame desde un archivo csv
#Eliminamos el dataframe series
rm(series)

#Leemos el archivo csv
series<-read.csv("C:/Users/valer/OneDrive/Documentos/Diplomado Ciencia de Datos/R/series.csv")

#----Operaciones basicas
#Caracteristicas del dataframe
View(series)
nrow(series)
ncol(series)
str(series)
summary(series)

#Agregar nueva informacion (fila)
band_of_brothers<-data.frame(nombre="Band of Brothers",
                             imdb=9.4,
                             episodios=10,
                             concluida=TRUE)
series<-rbind(series,band_of_brothers)

#Agregar nueva informacion(columna)
series$metascore<-c(8.7,8.6,6.6,NA,8.4,8.7)
series$promedio<-(series$imdb+series$metascore)/2

#----Extrayendo informacion 
#Extraer filas por posicion
series$nombre
series[1,]
series[1,1:2]
series[1,c("nombre","imdb","metascore")]
series[1:3,c("nombre","imdb","metascore")]
series[c(1,3,5),c("nombre","imdb","metascore")]

#Extraer filas por condicion
series[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE),]
series[series$imdb>=9,]
series[series$episodios<50,]
series[!series$concluida,]

#----Explorando informacion
videogames<-read.csv("C:/Users/valer/OneDrive/Documentos/Diplomado Ciencia de Datos/R/all_games.csv")
nrow(videogames)
ncol(videogames)

#Un vistazo a los datos
View(head(videogames,10))
str(videogames, strict.width="cut")

#Valores faltantes
colSums(is.na(videogames))

#Cual es el juego con menor meta_score?
which.min(videogames$meta_score)
View(videogames[18799,])

#Cual es el juego con mayor meta_score?
which.max(videogames$meta_score)
View(videogames[1,])

#Cuantos juegos hay en cada plataforma
videogames$platform<-trimws(videogames$platform)
sort(table(videogames$platform),decreasing = TRUE)

#Cuantos juegos de PC tienen un meta_score mayor a 80
nrow(videogames[videogames$platform=="PC"&videogames$meta_score>80,])


#----Ejercicio

#Cuantos hay de GameCube o de PSP
nrow(videogames[videogames$platform=="GameCube",])
nrow(videogames[videogames$platform=="PSP",])
nrow(videogames[videogames$platform%in%c("GameCube","PSP"),])

#Cuantos juegos hay d Switch que tenga metal_score entre 50 y 70
nrow(videogames[videogames$platform=="Switch"&videogames$meta_score>=50&videogames$meta_score<=70,])

videogames$user_review<-as.numeric(videogames$user_review)*10
str(videogames,strict.width="cut")

#----------------
#   Graficas    -
#----------------

#----Histograma
hist(videogames$meta_score,
     breaks = 40,
     col = "blue",
     xlab = "Meta score",
     main = "Histograma")

#----Scatterplot
n64<-videogames[videogames$platform=="Nintendo 64",]
View(n64)
plot(n64$meta_score,
     n64$user_review,
     col="steelblue",
     pch=19,
     lwd=5,
     xlab = "MetaScore",
     ylab = "User Review",
     main="Comparacion Metascore y User review para N64",
     frame=FALSE)

#----Boxplot
#Unboxplot basico
boxplot(videogames$meta_score)

#Boxplot por plataforma
boxplot(meta_score~platform,
        data=videogames,
        col="purple",
        subset=platform%in%c("PSP", "Nintendo 64", "PC",
                             "Switch","PlayStation 4"),
        xlab = "",
        ylab = "Metascore",
        frame=FALSE)







