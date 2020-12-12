############ Práctica 3 condicionales e interadores ###############
#print va impromir el argumento tal
  #la figura de else debe ser }else{
#forma básica de if (si esto ocurre esto) - else (de lo contrario hazo otra cosa)
if(4 > 5){
 print("Sí, es verdadero") 
}else{
  print("No, no es verdadero")
}
numero1<-15
numero2<-20

if(numero2>numero1){
  print("verdadero")
  
}else{
  print("falso")
}

##################
#condición de tres variables

numero3<-60

if(numero2>numero1 | numero3 < numero2){
  print("verdadero")
  
}else{
  print("falso")
}

####################  & 
numero4 <- 5

if(numero2>numero1 & numero3 < numero2){
  print("verdadero")
  
}else{
  print("falso")
}

#############################################################
# **** Ciclos de control *****
# i= iterador 

vector_numero<-1:9

for(i in vector_numero){
  print("hola")
  
}

# truquito para hacer más corto el código

for(i in 1:9){
  print("hola")
  
}

# iterador es controlador 

for(iterador in 1:9){
  print(iterador)
  
}

################################# * #####################################
# Paste concatena texto con la numeración 

for(iterador in 1:9){
  print(paste("texto concatenado",iterador))
}

##############
#### tarea




