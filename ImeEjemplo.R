#instalación de paquetes
install.packages("ggpubr")
install.packages("dplyr")
install.packages("assertthat")
install.packages("magrittr")
install.packages("tidyr")
install.packages("lifecycle")

#Utilización de paraquetes
#library(ggpubr)
#library(dplyr)
#library(magrittr)
#library(tidyr)


#Se configura la carpeta de trabajo 

#Carpeta PC USACH
setwd("C:\\Users\\glucero\\Desktop\\IME")

#Carpeta PC Casa
#setwd("C:\\Users\\gerar\\Desktop\\Inferencia y Modelos Estadisticos\\R")



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

# Crear una nueva observaci ón.
#nueva <- data . frame ( nombre =" Elba Calao del Río",
#                           prueba _1 = 6.4 ,
#                           prueba _2 = 2.3 ,
#                           prueba _3 = 4.6 ,
#                           edad = 24)
# Agregar la nueva observaci ón al data frame .
#dataframe <- rbind ( dataframe , nueva )

datosIris <- iris
versicolor <- datosIris %>% dplyr::filter( Species == "versicolor")
datosMujer <- datosCasen %>% filter( sexo == "Mujer")
datosMujer1 <- datosCasen %>% filter("edad" == 83)










