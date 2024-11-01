base <- base.r.wege.full

faixa_open <- subset(base, Open != NA)
View(faixa_open)

base$Date <- as.Date(base$Date, format = "%d/%m/%Y")

ano_2009 <- subset(base, format(Date, "%Y") == '2009')
ano_2010 <- subset(base, format(Date, "%Y") == '2010')
ano_2011 <- subset(base, format(Date, "%Y") == '2011')
ano_2012 <- subset(base, format(Date, "%Y") == '2012')
ano_2013 <- subset(base, format(Date, "%Y") == '2013')
ano_2014 <- subset(base, format(Date, "%Y") == '2014')
ano_2015 <- subset(base, format(Date, "%Y") == '2015')
ano_2016 <- subset(base, format(Date, "%Y") == '2016')
ano_2017 <- subset(base, format(Date, "%Y") == '2017')
ano_2018 <- subset(base, format(Date, "%Y") == '2018')
ano_2019 <- subset(base, format(Date, "%Y") == '2019')
ano_2020 <- subset(base, format(Date, "%Y") == '2020')
ano_2021 <- subset(base, format(Date, "%Y") == '2021')
ano_2022 <- subset(base, format(Date, "%Y") == '2022')
ano_2023 <- subset(base, format(Date, "%Y") == '2023')

mediaAnualOpen09 <- mean(as.numeric(ano_2009$Open))
mediaAnualOpen10 <- mean(as.numeric(ano_2010$Open))
mediaAnualOpen11 <- mean(as.numeric(ano_2011$Open))
mediaAnualOpen12 <- mean(as.numeric(ano_2012$Open))
mediaAnualOpen13 <- mean(as.numeric(ano_2013$Open))
mediaAnualOpen14 <- mean(as.numeric(ano_2014$Open))
mediaAnualOpen15 <- mean(as.numeric(ano_2015$Open))
mediaAnualOpen16 <- mean(as.numeric(ano_2016$Open))
mediaAnualOpen17 <- mean(as.numeric(ano_2017$Open))
mediaAnualOpen18 <- mean(as.numeric(ano_2018$Open))
mediaAnualOpen19 <- mean(as.numeric(ano_2019$Open))
mediaAnualOpen20 <- mean(as.numeric(ano_2020$Open))
mediaAnualOpen21 <- mean(as.numeric(ano_2021$Open))
mediaAnualOpen22 <- mean(as.numeric(ano_2022$Open))
mediaAnualOpen23 <- mean(as.numeric(ano_2023$Open))


  