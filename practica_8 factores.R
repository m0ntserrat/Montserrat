#*************************
#***Practica 8 Factores***

#*base de datos muestra de bicicletas***

bikes<-read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/bikes.csv")

#Conocer la estructra 
str(bikes)

#Resumen de datos
summary(bikes)

#Tipo de datos
bikes$season
class(bikes$season)

#Para convertirleos a factores
unique(bikes$season)
bikes$season<-factor(bikes$season, 
                     levels= c(1:4),
                     labels=c("invierno", "primavera","verano","oto�o"))


#D�as laborales y festivos 

class(bikes$workingday)

#Al ser enteros habr� que reconvertir a factores

bikes$workingday<-factor(bikes$workingday,
                         levels = c(0,1),
                         labels=c("No_Laborales","Laborales"))

#("despejado", "nublado", "Lluvioso")
bikes$weathersit <- factor(bikes$weathersit,
                         levels = c(1,2,3),
                         labels=c("despejado", "nublado", "lluvioso"))


#Determinar los colores por niveles

colores<-c("#bee487","#87cde4","#bf87e4","e4878e")

#para poner 3 gr�ficas diferentes de ha� el 1,3

par(mfrow=c(1,3))

#Graficar
plot(bikes$season, main="Categor�as de las estaciones del a�o",
     xlab ="Temporadas",
     ylab ="Frecuencias",
     col = colores)

plot(bikes$workingday, main="D�as laborales",
     xlab ="D�as Laborales",
     ylab ="Frecuencias",
     col = colores)

plot(bikes$weathersit, main="Clima",
     xlab ="Clima",
     ylab ="Frecuencias",
     col = colores)

#Cortes en el dataframe (genera subconjuntos de datos) Split es una opci�n

temporada<-split(bikes, bikes$season)

#Funciones de subconjutno
par(mfrow=c(2,2))

invierno<-subset(bikes, season=="invierno")$cnt
primavera<-subset(bikes, season=="primavera")$cnt
verano<-subset(bikes, season=="verano")$cnt
oto�o<-subset(bikes, season=="oto�o")$cnt

#Histograma
is.vector(invierno)

colores<-c("#36cce7","#e736c4","#e7ca36","#86e736")

hist(invierno,
     main ="Histograma de renta de bicicletas", 
     xlab="invierno", 
     ylab="Frecuencia",
     col=colores,
     prob=T)

#L�neas de tendencia, media, mediana 
lines(density(invierno))
abline(v=mean(invierno), col="blue")
abline(v=median(invierno),col="green")


#

hist(primavera,
     main ="Histograma de renta de blicicletas", 
     xlab="Primavera", 
     ylab="Frecuencia",
     col="87e4d0",
     prob=T)

lines(density(primavera))
abline(v=mean(primavera), col="blue")
abline(v=median(primavera),col="green")

hist(verano,
     main ="Histograma de renta de blicicletas", 
     xlab="Verano", 
     ylab="Frecuencia",
     col="8b87e4",
     prob=T)

lines(density(verano))
abline(v=mean(verano), col="blue")
abline(v=median(verano),col="green")
      
hist(oto�o,
     main ="Histograma de renta de blicicletas", 
     xlab="Oto�o", 
     ylab="Frecuencia",
     col="#e4878e",
     prob=T)

lines(density(oto�o))
abline(v=mean(oto�o), col="blue")
abline(v=median(oto�o),col="green")
 




