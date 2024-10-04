p <- 1000
n <- 100

peso1 <- abs(round(rnorm(n, 70, 12), 0))
summary(peso1)

peso2 <- abs(round(rnorm(n, 75, 12), 0))
summary(peso2)

par(mfrow=c(2,2))
hist(peso1)
hist(peso2)

boxplot(peso1, peso2,
        main = 'Distrubuição peso da amostra',
        xlab = 'Peso',
        col = 'purple',
        border = 'black',
        horizontal = TRUE,
        notch = TRUE
)
