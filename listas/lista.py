a_list = [2, 3, 7, None]
tup = ("foo", "bar", "baz")
b_list = list(tup)
print(b_list)
b_list[2] = "bass"
print(b_list)

#Inclusão e remoção de elementos

c_list = ['foo', 'bar', 'baz']
c_list.append('dwarf')
c_list.insert(1, 'red')
print(c_list)
c_list.pop(2)
print(c_list)
c_list.append('baz')
print(c_list)
c_list.remove('baz')
print(c_list)

#Concatenação e combinação de listas

[4, None, 'foo'] + [7, 8, (2, 3)]
x_list = [4, None, 'foo']
x_list.extend([7, 8, (2, 3)])
print(x_list)

# ordenação

a = [7, 2, 5, 1, 3]
a.sort()
print(a)
b = ['saw', 'small','He', 'foxes', 'six']
b.sort(key=len)
print(b)

#Fatiamento

seq = [7, 2, 3, 7, 5, 6, 0, 1]
seq[1:5]
seq[3:5] = [6, 3]
print(seq)
seq[:5]
seq[3:]
# uso de intervalo
seq[::2]