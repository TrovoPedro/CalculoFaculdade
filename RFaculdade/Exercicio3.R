p <- 1000
n <- 50

grupo1 <- abs(round(rnorm(n, 60, 15), 0))
summary(peso1)

grupo2 <- abs(round(rnorm(n, 75, 10), 0))
summary(peso2)

grupo3 <- abs(round(rnorm(n, 55, 12), 0))
summary(peso2)

hist(grupo1)
hist(grupo2)
hist(grupo3)

boxplot(grupo1, grupo2, grupo3,
        main = 'Distrubuição de cara e coroa da amostra',
        xlab = 'Cara/Coroa',
        col = 'purple',
        border = 'black',
        horizontal = TRUE,
        notch = FALSE
)