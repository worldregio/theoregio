## Test du package circular
library(circular)

## Choix de coordonnées
X <-   c(0,45,90,180,-90 )

# Importation des donnes
x <- circular(X, units = "degree")
class(x)

# Visualisation
plot(x)
text(x,1:12)

# Distance sur le cercle
d<-dist.circular(x, upper=T, diag = 0,method = "geodesic")
m<-as.matrix(d)
m
mean(x)
