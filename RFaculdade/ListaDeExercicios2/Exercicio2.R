notasOriginais <- notas

set.seed(20)
notasOriginais <- data.frame(Matricula = sample(x = 011475:012990, size = 30, replace = FALSE),
                    ac1 = sample(x = 1:10, size = 30, replace = TRUE),
                    ac2 = sample(x = 1:10, size = 30, replace = TRUE),
                    prova_final= sample(x = 1:10, size = 30, replace = TRUE))

round(summary(notasOriginais$ac1), 2)
round(summary(notasOriginais$ac2), 2)
round(summary(notasOriginais$prova_final), 2)

par(mfrow = c(2,2)) #mostra os dois graficos um do lado do outro

hist(notasOriginais$ac1,
     main = 'Histograma de Notas',
     ylab = 'frequência',
     xlab = 'Notas ac1',
     col = "purple",
     border = "green"
)

hist(notasOriginais$ac2,
     main = 'Histograma de Notas',
     ylab = 'frequência',
     xlab = 'Notas ac2',
     col = "purple",
     border = "green"
)

hist(notasOriginais$prova_final,
     main = 'Histograma de Notas',
     ylab = 'frequência',
     xlab = 'Notas prova final',
     col = "purple",
     border = "green"
)

mediaFinal <- notas

mediaFinal$Media <- round((notasOriginais$ac1 * .4) + (notasOriginais$ac2 * .4) + (notasOriginais$prova_final * .2), 2)
round(summary(mediaFinal$Media), 1)

hist(mediaFinal$Media,
     main = 'Histograma das médias finais',
     ylab = 'frequência',
     xlab = 'Média final',
     col = "purple",
     border = "green"
)




