## ex 1 / the World is a line
library(sf)

set.seed(42)
n<-12
lat=0
lon=round(runif(n,-180,180))
cod <- as.character(1:n)
coo<-data.frame(lon,lat)
row.names(coo)<-c(1:12)
coo
#wld<-st_as_sf(coo, coords=c("lon","lat"))
plot(coo)
dis<-dist(coo,upper = T,diag = T)
class(dis)
cah<-hclust(dis,)
plot(cah,hang = -1)

