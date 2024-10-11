valor1 <- as.numeric(readline(prompt = "Digite o primeiro número:"))
valor2 <- as.numeric(readline(prompt = "Digite o primeiro número:"))

print(valor1)
print(valor2)

if(is.numeric(valor1) && is.numeric(valor2)){
  if(valor1 > valor2){
    print(valor1)
  } else{
    print(valor2)
  }
}else{
  print("Os valores precisam ser númericos")
}

