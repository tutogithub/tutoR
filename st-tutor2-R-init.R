help(plot)
# Ceci est un commentaire
2+2
sqrt(2)
a = exp(2) # cr�ation d�une variable scalaire
b = a + pi
b # affichage de la valeur
# liste des variables
ls()
# Vecteur
x = 1:10 # d�finition d�une s�quence
x
y = 2*x + 3
y[5] ; y[1:3] ; y[-3] # composants d�un vecteur
# Matrice
A = matrix(1:15,ncol=5); A
B = matrix(1:15,nc=5,byrow=TRUE) ; B
A[1,3] ; A[,2] ; A[2,] ; A[1:3,1:3] # composants
# Liste
x=list(mat=A, texte="testliste",vec=y)
x[[2]] ; x$vec # composants
# Base de donn�e ou data frame
# Tableau contenant des vecteurs de types
# �ventuellement diff�rents
taille = c(147, 132, 156, 167, 156, 140)
poids = c( 50, 46, 47, 62, 58, 45)
sexe = c("M","F","F","M","M","F")
H = data.frame(taille,poids,sexe)
H
summary(H)
plot(poids,taille)
plot(H$poids,H$taille)
plot(H$poids,H$taille)
n=10
Y=rnorm(n,80,5) # g�n�ration
mean(Y) # moyenne
sd(Y) # �cart-type
sd(Y)/sqrt(length(Y)) # �cart-type de la moyenne
summary(Y) # quartiles et moyenne
boxplot(Y) # diagramme bo�te
# histogramme de la densit�
hist(Y, probability=T, col="blue")
# estimation par la m�thode du noyau
lines(density(Y), col="red", lwd=2)
# tracer la loi th�orique
x=1:100
curve(dnorm(x,mean=80,sd=5),add=TRUE,
col="green",lwd=2)
# Variables et nombres al�atoires
# Loi des grands nombres
n=100
# matrice de nombres al�atoires de
# 10 colonnes et n lignes
Y=matrix(rnorm(n*10,80,5),n,10)
# moyenne de chaque colonne
apply(Y,2,mean)
mean(apply(Y,2,mean)) # moyenne des moyennes
# �cart-type de chaque colonne
apply(Y,2,sd)
mean(apply(Y,2,sd)) # moyenne des �carts-types
n=1000
# matrice de nombres al�atoires de
# 10 colonnes et n lignes
Y=matrix(rnorm(n*10,80,5),n,10)
# moyenne de chaque colonne
apply(Y,2,mean)
mean(apply(Y,2,mean)) # moyenne des moyennes
# �cart-type de chaque colonne
apply(Y,2,sd)
mean(apply(Y,2,sd)) # moyenne des �carts-types
n=1000
N=12
X=rep(0,n)
# n it�rations
for (i in 1 : n) X[i]=sum(runif(N))
# histogramme
hist(X, col="blue", probability=T)
# estimation par m�thode su noyau
lines(density(X), col="red", lwd=2)
x=X
sigma2=N/12
curve(dnorm(x,mean=N/2,sd=sqrt(sigma2)),
add=T, col="green", lwd=2)
#test transfert ves github
help(ggplot)
