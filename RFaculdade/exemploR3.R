acao <- base.r.wege
plot(acao$Close)

acao$id <- seq(1:48)
modelo2 <- lm(acao$Close~acao$id)
summary(modelo2)

plot(acao$Close)
abline(modelo2)

modelo_poli <- lm(acao$Close~poly(acao$id,3))

summary(modelo_poli)

plot(acao$Close)
lines(sort(acao$id), fitted(modelo_poli)[order(acao$id)], col="purple",type = "l")

modelo_poli$coefficients

library(ggplot2)
x <- acao$id
y <- acao$Close

ggplot(acao, aes(id, Close))+geom_point()+geom_smooth(method = "lm",formula = y~poly(x,3))

modelo_log <- lm(acao$Close~log(acao$id))
summary(modelo_log)

ggplot(acao, aes(id, Close))+geom_point()+geom_smooth(method = "lm",formula = y~log(x))


