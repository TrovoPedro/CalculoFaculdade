data <- base.r.notas

plot(data$nota.algo, data$nota.arqcomp)

modeloNotas <- lm(data$nota.arqcomp~data$nota.algo)
summary(modeloNotas)

par(mfrow=c(2,2))
plot(modeloNotas, which = 1:4)
abline(modeloNotas)

notas_score <- (data$nota.arqcomp+data$nota.banco) / 2
modeloNotas2 <- lm(data$nota.algo ~ notas_score)
plot(notas_score, data$nota.algo)
abline(modeloNotats2)

summary(modeloNotas2)
par(mfrow=c(2,2))
plot(modeloNotas2, which = 1:4)

dados_teste <- data[,c("nota.algo", "nota.arqcomp", "nota.banco")]

pairs(dados_teste)
