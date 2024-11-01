data <- base.r.notas

plot(data$nota.algo, data$nota.arqcomp, xlab = "Nota Algo", ylab = "Nota Arqcomp")

modeloNotas <- lm(data$nota.arqcomp ~ data$nota.algo)
summary(modeloNotas)

par(mfrow=c(2,2))
plot(modeloNotas, which = 1:4)
abline(modeloNotas) 

notas_score <- (data$nota.arqcomp + data$nota.banco) / 2
modeloNotas2 <- lm(data$nota.algo ~ notas_score)
plot(notas_score, data$nota.algo, xlab = "Notas Score", ylab = "Nota Algo")
abline(modeloNotas2)

summary(modeloNotas2)
par(mfrow=c(2,2))
plot(modeloNotas2, which = 1:4)

dados_teste <- data[, c("nota.algo", "nota.arqcomp", "nota.banco")]

pairs(dados_teste)

modelo1 <- lm(dados_teste$nota.algo ~ dados_teste$nota.arqcomp + dados_teste$nota.banco)
hist(residuals(modelo1), main = "Histograma dos Resíduos do Modelo 1")
