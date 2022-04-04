#instalación de paquetes
install.packages("ggpubr")
install.packages("dplyr")
install.packages("magrittr")
install.packages("tidyr")



#Se configura la carpeta de trabajo 

#Carpeta PC USACH
setwd("C:\\Users\\glucero\\Desktop\\IME_Ejemplo")

#Carpeta PC Casa
#setwd("C:\\Users\\gerar\\Desktop\\Inferencia y Modelos Estadisticos\\R")



#se sacan datos que vienen en R llamado en este caso mtcars
datosCars <- mtcars

#Se sacan datos de un archivo csv2 (ingles)
datosCovid <- read.csv2("EP01_Datos_Covid.csv")

#Se sacan datos de un archivo csv2 (ingles)
datosCovid <- read.csv2("EP01_datos_raza.csv")



