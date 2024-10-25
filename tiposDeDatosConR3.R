#vector
#Funcion c combine
manzana<-c("rojo","verde","amarillo")
print(manzana)

#lista
lista1<-list(c(2,3,5),21.5,sin)
print(lista1)

#Matriz
m=matrix(c('a','a','b','c','b','a'),nrow = 2,ncol = 3,byrow = FALSE)
print(m)

#Arreglo(array)
a<-array(c('green','yellow','red','blue'),dim = c(3,3,2))
print(a)

#Factores
apple_colors<-c('green','green','yellow','red','red','red','green')
factor_apple<-factor(apple_colors)
print(factor_apple)
print(nlevels(factor_apple))

#DataFrame
EMI<-data.frame(
  gender=c("Male","Male","Famale"),
  height=c(152,171.5,165),
  weight=c(81,93,78),
  age=c(42,38,26)
)
print(EMI)
