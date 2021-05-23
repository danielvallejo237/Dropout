#Lectura de la base de datos y análisis de componentes proncipales 

data.anahuac<-read.csv("data_anahuac.csv")
row.names(data.anahuac)<-data.anahuac$X
data.anahuac$Graduado<-as.numeric(data.anahuac$Graduado)
data.anahuac<-data.anahuac[,2:8]
componentes.anahuac<-prcomp(data.anahuac,scale=FALSE)
kmedias<-kmeans(componentes.anahuac$x,centers = 4)
x11()
plot(componentes.anahuac$x,col=kmedias$cluster)


componentes.anahuac$sdev