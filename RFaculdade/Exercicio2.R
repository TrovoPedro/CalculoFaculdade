p <- 1000
n <- 450

moeda1 <- rbinom(n, 1, 0.5)
moeda2 <- rbinom(n, 1, 0.7)

par(mfrow=c(2,2))
hist(moeda1)
hist(moeda2)

boxplot(moeda1, moeda2,
        main = 'Distrubuição de cara e coroa da amostra',
        xlab = 'Cara/Coroa',
        col = 'purple',
        border = 'black',
        horizontal = TRUE,
        notch = FALSE
)
