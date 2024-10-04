p <- 200000
n <- 10000

idade <- abs(round(rnorm(n, 45, 7), 0))
summary(idade)

hist(idade, main = "Histograma de idade", ylab = "Frequencia", xlab = "Idade")
 hist_idade <- hist(idade)
 
 str(hist_idade)
 
 hist_idade$breaks
 
 plot(hist_idade)
 par(mfrow=c(2,2))
 
 hist(idade, breaks = 2)
 hist(idade, breaks = 10)
 hist(idade, breaks = 30)
 hist(idade, breaks = 100)
 
h <- hist(idade, ylim =c(0, 6000))
text(h$mids, h$counts, labels=h$counts, adj=c(0.5, -0.5))

salario <- abs(round(rnorm(n, 3000, 400), 2))
summary(salario)

idade <- abs(round(rnorm(n, 3000, 400), 2))
summary(idade)

pop.carros <- rep(c(0,1,2,3), p)
carros <- sample(pop.carros, n)

rm(pop.carros)
table(carros)


pop.filhos <- rep(c(0,1,2,3,4), p)
filhos <- sample(pop.filhos, n)
rm(pop.filhos)
table(filhos)

par(mfrow=c(1,2))
hist(carros)
hist(filhos)


pop.esc <- rep(c(0,1,2,3,4,5,6), p)
esc.temp <- sample(pop.esc, n)
esc <- factor(esc.temp,
              levels = c(0,1,2,3,4,5,6),
              labels = c('Analfabeto', '1grau', '2grau', '3grau', 'msc', 'doc', 'posdoc'),
              ordered = TRUE)
str(esc)
table(esc)

#pre-definindo a porcentagem de ser fumante ou nao em 50%
fumante.n <- rbinom(n, 1, 0.50)
fumante.f <- factor(fumante.n,
                    levels=c(0,1),
                    labels=c('Não fumantes', 'Fumantes'),
                    ordered=TRUE)
str(fumante.n)
table(fumante.n)
mean(fumante.n)

pop.sexo <- rep(c(1,2), p)
sexo.temp <- sample(pop.sexo, n)

sexo <- factor(sexo.temp,
               levels=c(1,2),
               labels=c('Masculino', 'Feminino'),
               ordered=FALSE)
str(sexo)
table(sexo)

pop.prof <- rep(0:2, p)
prof.temp <- sample(pop.prof, n)

prof <- factor(prof.temp,
               levels = c(0,1,2),
               labels = c('humanas', 'exatas', 'bio'),
               ordered = FALSE)

str(prof)
table(prof)

df <- data.frame(id = 1:n, sexo, esc, prof, fumante.f, fumante.n, salario, carros, filhos, idade)

str(df)
View(df)


hist(as.numeric(esc))

box_idade <- boxplot(idade)

str(box_idade)
boxplot(idade, horizontal = TRUE)

boxplot(idade,
        main = 'Distrubuição idade da amostra',
        xlab = 'Idade',
        col = 'purple',
        border = 'black',
        horizontal = FALSE,
        notch = TRUE
        )
box_idade = boxplot(idade)
outliers_idade = box_idade$out
idade2 = idade[!(idade %in% outliers_idade)]

