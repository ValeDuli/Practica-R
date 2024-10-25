#Graficas de funciones matematicas
z<-seq(-3,3,0.01)
?dnorm
fdp<-dnorm(z)
plot(z,fdp,type = "l")
polygon(c(z[z<=-1],-1),c(fdp[z<=-1],fdp[z==-3]),col = "red")

#Podemos crear una funcion que grafique el area bajo la curva
#normal estandard

area<-function(x=0){
  z<-seq(-3,3,0.01)
  fdp<-dnorm(z)
  plot(z,fdp,type = "l")
  polygon(c(z[z<=x],x),c(fdp[z<=x],fdp[z==-3]),col = "red")
}

area()
area(2)
area(-2)

#Funcion de Makeham
x<-1:100
A<-.00007
B<-.0005
c<-10^.04
mu<-A+B*c^x
plot(x,mu,type="l")
makeham<-function(A,B,c){
  plot(x,A+B*c^x,type = "l",main="Funcion de Makeham")
}
makeham(.00007,.0005,1.09)
makeham(A,B,c)

#Curva de Ricker

x<-0:100
yA<-482*x*exp(-0.045*x)
yB<-518*x*exp(-0.055*x)
plot(c(x,x),c(yA,yB),xlab = "peces",ylab = "padres",type = "n")
lines(x,yA,lty=1,col="blue")
lines(x,yB,lty=2,col="red")
xp<-sample(0:100,20)
yAp<-518*xp*exp(-0.055*xp)
yAp<-yAp+50+rnorm(20,0,8)
points(xp,yAp)

