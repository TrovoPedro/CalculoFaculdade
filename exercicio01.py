from math import pow
listaResultados = []

# exercício 1

n1 = pow(2,3)
listaResultados.append(n1)

# exercício 2

n2 = pow(-2,3)
listaResultados.append(n2)

# exercício 3

n3 = pow(1,0)
listaResultados.append(n3)

# exercício 4

n4 = pow((-1),0)
listaResultados.append(n4)

# exercício 5

n5 = pow(2,0)
listaResultados.append(n5)

# exercício 6

r6 = 2 / 5
n6 = pow(r6,3)
listaResultados.append(n6)

# exercício 7

n7 = pow(3,-2)
listaResultados.append(n7)

# exercício 8

r8 = 1/2
n8 = pow(r8,-3)
listaResultados.append(n8)

# exercício 9 

n9 = pow(pow(-1,3),4)
listaResultados.append(n9)

# exercício 10

n10 = pow(0.5,3)
listaResultados.append(n10)

# exercício 11
n11 = pow(0.25, 4)
listaResultados.append(n11)

# exercício 12

n12 = pow(0,4)
listaResultados.append(n12)

# exercício 13

n13 = 1 + (pow(0.41,2))
listaResultados.append(n13)

# exercício 14

n14 = 1 / 4 + (pow(5,2)) - (pow(2,-4))
listaResultados.append(n14)

# exercício 15

n15 = (pow(2,-3)) + (pow(-4,-5))
listaResultados.append(n15)


# exercício 16

n16 = pow(4/5 - 1/2 + 1, -2) + 1 / (1 + pow(3,2) - pow((4 - 5), -2))
listaResultados.append(n16)



for i in range(17):
    print("Exercicio ",i + 1," resultado:")
    print(listaResultados[i - 1])



