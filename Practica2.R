######################## Practica 2 ################################

#1. construir los vectores
#2. Lista de vectores

#nombre de 3 películas (Char)
#calificación (numérico)
#críticas de 3 películas (char)
#si te gusto o no (T, F)

nombre_de_Peli<-c("Come Away",
                 "The Aspern Papers",
                 "Sea Fever")
año<-c(2019L,
       2018L,
       2019L)
calificación<-c(4.3,
                4.1,
                5.3)
criticas<-c("Un ambicioso editor (Jonathan Rhys Meyers), obsesionado con el poeta romántico Jeffrey Aspern y su corta y romántica vida, viaja de los Estados Unidos a Venecia",
                  "Antes de que Alicia se adentrase en el País de las Maravillas y de que Peter se convirtiese en Pan, ambos eran hermanos. Después de que su hermano mayor fallezca en un trágico accidente",
                  "La tripulación de una embarcación irlandesa pierde su rumbo en alta mar. Su vida corre peligro ya que un parásito ha hecho acto de presencia en su suministro de agua")
recomendable<-c(T,F,T)

#Listas
peliculas<-list(nombre_de_Peli,
                año,
                calificación,
                criticas,
                recomendable)


#######################################################################
#estructuras matriciales, cardinales y de grado
#Estructuras bidimensionales (dataframe)
#[][][][][]
#[][][][][]
#[][][][][]



data_frame_peliculas<-as.data.frame(peliculas)
# colname asigna nombres a las columnas
colnames(data_frame_peliculas)<-c("nombre","año","puntuación","reseña","like")

#row.names=F es para no crear una llave primaria =T la quita
write.csv(data_frame_peliculas,"peliculas_criticas.csv",row.names = F)

# para guardar en otro directorio
#file.choose()


