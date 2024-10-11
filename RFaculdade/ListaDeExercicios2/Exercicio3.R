vendedor <- c("Ana", "Flavio", "Pedro", "Mariana", "Ana", "Flavia", "Pedro", "Mariana")
dia <- c(1, 1, 1, 1, 2, 2, 2, 2)
produto <- c("saia", "Casaco", "vestido", "meia", "calçaF", "CalçaS", "CalçaS", "Manta")
quantidade <- c(1, 2, 1, 5, 3, 0, 3, 4)
precoUnitario <- c(145, 289, 320, 39, 240, 240, 240, 69)
custoUnitario <- c(89, 144, 160, 15, 210, 210, 210, 39)

df <- data.frame(Nome = vendedor, Dia = dia, Produto = produto, Quantidade = quantidade, PrecoUnitario = precoUnitario, custoUnitario = custoUnitario)
print(df)

faturamento = quantidade*precoUnitario

barplot(
  height = faturamento,
  names.arg = vendedor,
  col = "#9370DB",
  main = "Faturamento",
  xlab = "Vendedores",
  ylab = "Faturamento",
)

