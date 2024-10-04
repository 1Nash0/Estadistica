# Autor: Grupo 12

# Carga datos ----
library(dplyr)
library(readr)
library(tidyverse)
library(ggplot2)

lab <- read_csv("~/ESTADISTICA/Practica Grupal/AnalisisAIRBNB/Airbnb_Data.csv")
View(Airbnb_Data)

##Declaracion de variables

Precio = Airbnb_Data$log_price
TipoProp = Airbnb_Data$property_type
TipoHab = Airbnb_Data$room_type
Baños = Airbnb_Data$bathrooms
TipoCama = Airbnb_Data$bed_type
Cancelacion = Airbnb_Data$cancellation_policy
Limpieza = Airbnb_Data$cleaning_fee
Ciudad = Airbnb_Data$city
Verificado = Airbnb_Data$host_identity_verified
InstReserva = Airbnb_Data$instant_bookable
Barrio = Airbnb_Data$neighbourhood
NumReseña = Airbnb_Data$number_of_reviews
Puntuacion = Airbnb_Data$review_scores_rating
NumHabitaciones = Airbnb_Data$bedrooms
NumCamas = Airbnb_Data$beds




## Cambio log_price a precio normal

Airbnb_Data$log_price = exp(Airbnb_Data$log_price)


##
plot(x = Airbnb_Data$log_price, main = "Grafica", xlab = "Precio", ylab = "Algo", col = c("royalblue"))

