#Ejercicio Practico 10
#Grupo 3



#Se importan los paquetes a utilizar
library(dplyr)
library(magrittr)
library(ggpubr)
library(ggplot2)
datosCasen <- read.csv2("EP03 Datos Casen 2017.csv")


#Se selecciona la carpeta de trabajo 


#Carpeta PC Gerardo
setwd("C://Users//gerar//Desktop//Inferencia y Modelos Estadisticos//Ejercicio 10")


#Se obtienen los datos 
datos <- read.csv2("EP10 Datos.csv")

################################# PREGUNTA 1 ###########################################
########################################################################################


#¿Existe diferencia en la puntuación obtenida por los envases diseñados por LaKajita según las evaluaciones
#realizadas por niños y jóvenes?


#se obtiene una tabla con los datos de la empresa LaKajita
datosLK <- datos %>% filter(Diseno == "LaKajita")

#Se filtran los datos de LaKajita con las evalauciones hechas solo por jovenes y niños
datosLK <- datosLK %>% filter(Edad == "Joven" | Edad == "Nino")

#Se obtiene una tabla de frecuencias con las 7 categorias de calificaciones disponibles
freqLK <- as.data.frame(table(datosLK[["Puntaje"]]))


#Se realiza el gráfico de barras con las frecuencias
grafico <- ggbarplot(freqLK, x = "Var1", y = "Freq",
                                     label = TRUE, lab.pos = "out", lab.col = "black",
                                     fill = "Var1", palette = "jco",
                                     title = "Puntaje Dado a LaKajita",
                                     subtitle = "xd")


#Se obtiene el data frame con los datos de LaKajita y las evaluciones hechas por jovenes
datosLKJovenes <- datosLK %>% filter(Edad == "Joven")

#Se obtiene el data frame con los datos de LaKajita y las evaluciones hechas por niños
datosLKNinos <- datosLK %>% filter(Edad == "Nino")

print(grafico)


notasJovenes <- unlist(datosLKJovenes["Puntaje"])
notasNinos <- unlist(datosLKNinos["Puntaje"])






#########################################################################################
##########################################################################################

