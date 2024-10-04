p <- 1000
n <- 5000

maquina1 <- rbinom(n, 1, 0.6)
maquina2 <- rbinom(n, 1, 0.8)

hist(maquina1)
hist(maquina2)

boxplot(maquina1, maquina2,
        main = 'Distrubuição de maquinas da amostra',
        xlab = 'Maquinas',
        col = 'purple',
        border = 'black',
        horizontal = FALSE,
        notch = TRUE
)


