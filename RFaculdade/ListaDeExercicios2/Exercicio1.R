dadosOriginais <- city_temperature

summary(dadosOriginais$AvgTemperature)

dadosOriginais$gCelsius <- round(((dadosOriginais$AvgTemperature) - 32) * 5/9, 2)

summary(dadosOriginais$gCelsius)

hist(dadosOriginais$gCelsius,
     main = 'histograma de temperatura em graus Celsius',
     ylab = 'frequência',
     xlab = 'Temperatura',
     col = "purple",
     border = "green"
     
)


