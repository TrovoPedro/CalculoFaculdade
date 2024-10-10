# Tipos de variaveis estatisticas
# Quantativas(Númericas) = Contínua e Discreta
# Qualitativas(Categóricas) = Ordinal e Nominal

# Contínua = valores numericos que podem ser medidos, mas nao contados ex: Peso{56,06kg}
# Discreta = valores numericos que podem ser contado ex: Numero de casos de doenças{0,1,2}
# Ordinal = textos ou rótulos que tem uma ordem lógica ex: tamanho de vestimenta {PP, p, M, G, GG}
# Nominal = texto ou rótulos que não tem ordem lógica ex: profissão{engenheiro, professor}

# conseguimos fazer todos os gráficos com variaveis continuas


p <- 200000
n <- 15000

pop.escolaridade <- rep(c(0,1,2,3,4,5,6),p)
set.seed(15)
escolaridade.temp <- sample(pop.escolaridade, n)
escolaridade <- factor(escolaridade.temp, 
                       levels = c(0,1,2,3,4,5,6),
                       labels = c("analfabeto", "1° grau", "2° grau", "3° grau", 
                                  "mestrado", "doutorado", "posdoc"),
                       ordered = TRUE)
rm(pop.escolaridade, escolaridade.temp)
str(escolaridade)

summary(escolaridade)

table(escolaridade)
prop.table(table(escolaridade))

fumante.n <- rbinom(n, 1, .40)
fumante.f <- factor(fumante.n,
                    levels = c(0,1),
                    labels = c("Não", "Sim"),
                    ordered = TRUE)

str(fumante.f)
summary(fumante.f)
str(fumante.n)
mean(fumante.n)

par(mfrow = c(2,2)) #mostra os dois graficos um do lado do outro
barplot(table(escolaridade), ylab = "Número de participantes", col = "purple", border = "green")
barplot(table(fumante.f), ylab = "Número de participantes", col = "black", border = "green")

boxplot(fumante.f, fumante.n,
        main = 'Distrubuição de fumantes da amostra',
        xlab = 'Peso',
        col = 'purple',
        border = 'green',
        horizontal = FALSE,
        notch = FALSE)

round(prop.table(table(escolaridade)), 2)
round(prop.table(table(fumante.f)), 2)
fumante.f
prop.table(table(fumante.f))
round(prop.table(table(fumante.f)), 2)

summary(fumante.f)

par(mfrow=c(1,2))
barplot(round(prop.table(table(escolaridade)), 3),
        ylab = "Proporção dos participantes",
        col = 'purple',
        border = 'green',
        ylim = c(0,0.7))
barplot(round(prop.table(table(fumante.f)), 3),
        ylab = "Proporção dos participantes",
        col = 'purple',
        border = 'green',
        ylim = c(0,0.7))

table(escolaridade, fumante.f)
tabela1 <- prop.table(table(escolaridade, fumante.f))
tabela1

tabela2 <- round(prop.table(table(escolaridade, fumante.f)),4)
tabela2 * 100

addmargins(tabela1)

tabela3 <- round(prop.table(table(fumante.f, escolaridade), 1),4)
tabela3

addmargins(tabela3)

tabela4 <- round(prop.table(table(fumante.f, escolaridade), 2), 4)
tabela4

addmargins(tabela4)

library(scales)

x <- barplot(round(prop.table(table(fumante.f, escolaridade)), 2),
             col = rep(c("purple", "#d4d4d4")),
             legend = FALSE,
             ylim = c(0, 0.2),
             yaxt = "n",
             ylab = "Percentual de participantes")
yticks = seq(0, 0.2, by = 0.05)
axis(2, at = yticks, lab = percent(yticks))

y <- round(prop.table(table(escolaridade, fumante.f)), 2)

mosaicplot(prop.table(table(escolaridade, fumante.f)),
           col = c("purple", "#f1f1f1"),
           main = "")
