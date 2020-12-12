# Practica 1 #
# Aquí irá las líneas de cógigo

#Tipos de variables (variable = objeto)

#Tipo de datos Character 
variable_caracter<-"hola"

#Tipo de dato numérico
variable_numerico <- 5.45

#Tipo de dato entero
variable_entera <- 10L

#Tipo de datos lógicos
variable_lógica <-F

#Función para comprobar (esto me va a permitir conocer que tipo de variable es)
class(variable_lógica)

#Función vector (es una función que nos permite correr conjuntos de datos)

variables_caracter<- c("a","b","c","d","e")
variables_numerica<- c(1,2,3,99.9999,5.2)
variables_entera<- c(10L,150L,25L)
variables_lógica<- c(T,F,FALSE,TRUE)

#almacenar 
variables_mixtas<-list(variables_caracter,
                      variables_numerica,
                      variables_entera,
                      variables_lógica)

#almacenar tipo de datos iguales


######################## Reto ################################

#1. contruir los vectores
#2. Lista de vectores

#nombre de 3 películas (Char)
#calificación (numérico)
#críticas de 3 películas (char)
#si te gusto o no (T, F)
