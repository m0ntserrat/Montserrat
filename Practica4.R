# ****************************************************************** #
#                             Pr√°ctica 4 
# ****************************************************************** #

# enfermedades que empeoran los s√≠ntom√°s de Covid
# 

nombre_paciente<-c()
edad_paciente<-c()
sexo_paciente<-c()

paciente_diabetico<-c()
paciente_hipertenso<-c()
paciente_obesidad<-c()

paciente_temperatura<-c()
paciente_dolor_cabeza<-c()
paciente_dolor_torax<-c()
paciente_dif_respiratoria<-c()

# Ciclo iterativo para 5 pacientes

for(i in 1:5){
  
  nombre_paciente[i]<-readline(prompt = "Nombre_paciente:")
  edad_paciente[i]<-readline(prompt = "Edad_paciente:")
  sexo_paciente[i]<-readline(prompt = "Sexo_paciente:")
  
  paciente_diabetico[i]<-readline(prompt = "øEs diabÈtico? (SI/NO)")
  paciente_hipertenso[i]<-readline(prompt = "øEs Hipertenso?(SI/NO)")
  paciente_obesidad[i]<-readline(prompt = "øTiene obesidad?(SI/NO)")
  
  paciente_temperatura[i]<-readline(prompt = "øCu·l es la temperatura?")
  paciente_dolor_cabeza[i]<-readline(prompt = "øPresenta dolor de cabeza?")
  paciente_dolor_torax[i]<-readline(prompt = "øPresenta dolor de torax?")
  paciente_dif_respiratoria[i]<-readline(prompt = "øtiene difcultad respiratoria?")

# no esta funcionando Print!!!!
  
  
if (edad_paciente>60){
  print("probabilidad de complicaciÛn")
  
  if(paciente_temperatura>38.5 | paciente_dolor_torax=="S"){
    print("paciente con fiebre, trasladar a hospital")
  }
  
}else{
  print("es menor de 60 aÒos")
  }

}
