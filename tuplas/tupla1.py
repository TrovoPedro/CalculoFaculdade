tup = (4, 5, 6)
print(tup, type(tup))
tuple([4, 0, 2])
tuple('string')

nested_tup = ((4, 5, 6), (7, 8))
print(nested_tup)
nested_tup[0]
nested_tup[1]

#Concatenação de tuplas

tup = ('foo', [1, 2, 3], True)
a = (6, 0)
b = ('bar',)

print(tup + a + b)

#Desempacotamento de tuplas

tup = (4, 5, 6)
a, b, c = tup
print(b)

# Um uso comum do desempacotamento de variáveis é na iteração por sequências de tuplas ou listas

seq = [(1, 2, 3), (4, 5, 6), (7, 8, 9)]

for a, b, c in seq:
    print(f'a={a}, b={b}, c={c}')
    
values = (1, 2, 3, 4, 5, 6)
a, b, *rest = values
a
b
rest
values = ('ola', 'mundo', 'python', 'java', 'mysql', 'oracle')
c, d, *_ = values
print(_)