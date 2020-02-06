library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Media -------------------------------------------------------------------

mean(conjunto$Altura)

H.media <-subset(conjunto,
                 conjunto$Altura <= 13.9432)

H.16 <- subset(conjunto,
               conjunto$Altura < 16.5)

# Vecinos -----------------------------------------------------------------

mean(conjunto$Vecinos)

Vecinos <-subset(conjunto,
                 conjunto$Vecinos <= 3)

vecinos <-subset(conjunto,
                 conjunto$Vecinos < 4)

# Diametro ----------------------------------------------------------------

mean(conjunto$Diametro)

DBH_media <-subset(conjunto, conjunto$Diametro < 15.794)
DBH_16 <-subset(conjunto, conjunto$Diametro > 16)               

# Especie -----------------------------------------------------------------

Cedro_Rojo <- subset(conjunto, conjunto$Especie == "C")
Diam_cedro <- subset(Cedro_Rojo, Cedro_Rojo$diametro <= 16.9)
Altura_cedro <- subset(Cedro_Rojo, Cedro_Rojo$Altura > 18.5)

Tsuga_heterófila <- subset(conjunto, conjunto$Especie == "H")
Diam_Tsuga <- subset(Tsuga_heterófila, Tsuga_heterófila$diametro <= 16.9 )
Altura_Tsuga <- subset(Tsuga_heterófila, Tsuga_heterófila$Altura > 18.5)

Douglasia_verde <- subset(conjunto, conjunto$Especie == "F")
Diam_Douglasia <- subset(Douglasia_verde, Douglasia_verde$diametro <= 16.9)
Altura_Douglasia <- subset(Douglasia_verde, Douglasia_verde$Altura > 18.5)

HyF <- rbind(Tsuga_heterófila, Douglasia_verde)
tsu.doug <- subset(conjunto, conjunto$Especie == "H" | conjunto$Especie =="F")

# Histogramas -------------------------------------------------------------

hist(conjunto$Altura, col="yellow", xlab="Altura (m)", ylab= "Frecuencia", main = "Histograma de Altura")
hist(conjunto$Vecinos, col="blue", xlab="Vecinos", ylab="Frecuencia", main = "Histograma de Vecinos",)
hist(conjunto$Diametro, col="lightblue", xlab = "Diámentro", ylab = "Frecuencia", main = "Histograma de Diametro")

# Graficas ----------------------------------------------------------------

par(mfrow=c(2,2))
hist(Tsuga_heterófila.h$Altura, main = "Altura especie H", col = "blue" 
     , xlab = "Altura", ylab = Frecuencia)
hist(Douglasia_verde$Altura, main = "Altura especie F", col= "blue",
     xlab = "Altura", ylab = "Frecuencia")
hist(Tsuga_heterófila$Diametro, main = "Diametro especie H", col = "gren", xlab = "Diametro",
     ylab = "Frecuencia")
hist(Douglasia_verde$Diametro, main = "Diametro especie F", col = "green", xlab = "Diametro",
     ylab = "Frecuencia")

# Basicos -----------------------------------------------------------------

mean(conjunto$Altura)
sd(conjunto$Vecinos)

mean(conjunto$Vecinos)
sd(conjunto$Vecinos)

mean(conjunto$Diametro)
sd(conjunto$Diametro)

