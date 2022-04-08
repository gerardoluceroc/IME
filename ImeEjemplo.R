#instalacion de paquetes
#install.packages("ggpubr")
#install.packages("dplyr")
#install.packages("assertthat")
#install.packages("magrittr")
#install.packages("tidyr")
#install.packages("lifecycle")

#Utilizaci?n de paraquetes
#library(ggpubr)
library(dplyr)
library(magrittr)
#library(tidyr)


#Se configura la carpeta de trabajo 

#Carpeta PC USACH WINDOWS
#setwd("C:\\Users\\glucero\\Desktop\\IME")

#Carpeta PC USACH UBUNTU
setwd("/home/usuario/Escritorio/IME")

#Carpeta PC Casa
#setwd("C:\\Users\\gerar\\Desktop\\IME")



#se sacan datos que vienen en R llamado en este caso mtcars
datosCars <- mtcars

#Se sacan datos de un archivo csv2 (ingles)
datosCovid <- read.csv2("EP01_Datos_Covid.csv")

#Se sacan datos de un archivo csv2 (ingles)
datosRaza <- read.csv2("EP04_datos_raza.csv")

#Se sacan datos de un archivo csv2 (ingles)
datosCasen <- read.csv2("EP03 Datos Casen 2017.csv")


###############################################################################################
#################################################################################################




#mostrar las primer 6 filas de la encuesta casen
head(datosCasen)

#mostrar las 6 ultimas filas
tail(datosCasen)

#creacion de un vector
vector1 <- c(3.5, 2.5, 3.9, 3.9, 5.2)

#media del vector
media <- mean(vector1)

#se elimina de los datos casen, la columna que contiene el sexo de los encuestados
#datosCasen$sexo <- NULL
#datosCasen$sexo <- "indefinido"

# Crear una nueva observaci ?n.
#nueva <- data . frame ( nombre =" Elba Calao del R?o",
#                           prueba _1 = 6.4 ,
#                           prueba _2 = 2.3 ,
#                           prueba _3 = 4.6 ,
#                           edad = 24)
# Agregar la nueva observaci ?n al data frame .
#dataframe <- rbind ( dataframe , nueva )

datosIris <- iris

#Se obtiene un data frame con los datos de todas las mujeres de los datosCasen
#datosMujer <- datosCasen %>% filter( sexo == "Mujer")


#datosMujer1 <- datosCasen %>% filter("edad" == 83)
#petalos <- datosIris %>% select(Species, starts_with("Petal"))


#Se ordenan los datosCasen por sexo
#mujeresPrimero <- datosCasen %>% arrange(sexo)

#se ordenan los datosCasen por edad (descendente)
#edadDesc <- datosCasen %>% arrange(desc(edad))

#se ordenan los datosCasen por edad (ascendente)
#edadAsc <- datosCasen %>% arrange(edad)

#se modifica el datosCasen seleccionando solo las filas de sexo,edad, estado civil y ch1
#datosSelect <- datosCasen %>% select(sexo,edad,ecivil,ch1)

#a datos casen se agrega la variable edad -1
#casenActualizado <- datosCasen %>% mutate(edadNueva = edad - 1)



#se calcula la media
#media1 <- mean(datosCovid[[X30.06.2020]], na.rm = TRUE)

#media2 <- mean(datosCasen[["ytot"]])

#covid30 <- datosCovid %>% select(X30.06.2020:X10.09.2020)

#covid30 <- as.Date("X30.06.2020", "%d-%b-%Y")


#Se calcula la mediana de los sueldos de la encuesta casen
medianaSueldos <- median(datosCasen[["ytot"]])


#se calcula la mediana del sueldo y edad
#mediana_edad_sueldo <- sapply(datosCasen[["ytot"]], median) #no aplica usarla

#se calcula la varianza de los sueldos
varianzaSueldos <- var(datosCasen[["ytot"]])

#se calcula la desviacion estandar de los sueldos
sdSueldos <- sd(datosCasen[["ytot"]])


##########################################################################################################
############################SECTOR HISTOGRAMA###########################################################

#tabla de hombres
tabla_hombres <- datosCasen %>% filter(sexo == "Hombre")

#tabla de mujeres
tabla_mujeres <- datosCasen %>% filter(sexo == "Mujer")

#media de sueldos de hombres 
media_sueldos_hombres <- median(tabla_hombres[["ytot"]])

#media de sueldos de mujeres
media_sueldos_mujeres <- median(tabla_mujeres[["ytot"]])

#Se hace un grafico histograma con la relacion de sueldos de hombres y mujeres
histograma_sueldos <- gghistogram(datosCasen ,
                     x = "sexo",
                     bins = 10,
                     add = "mean",
                     xlab = "Sexo",
                     ylab = "Frecuencia",
                     color = "blue",
                     fill = "blue")
############################################################################################################
########################### FIN SECTOR HISTOGRAMA ##########################################################
