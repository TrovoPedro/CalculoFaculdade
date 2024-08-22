from math import pow
c = 4
>>> d = 5
>>> cElevado = pow(c,3)
>>> cElevado = pow(c,4)
>>> cElevado = pow(c,d)
>>> print("c elevado ao quadrado",cElevado)
c elevado ao quadrado 1024.0
>>> cElevado = pow(c,3)
>>> cElevado4 = pow(c,4)
>>> cElevadoD =pow(c,d)
>>> cElevado2 = pow(c,2)
>>> print("c elevado ao quadrado",cElevado2)
c elevado ao quadrado 16.0
>>> print("c elevado ao cubo ",cElevado3)
>>> print("c elevado ao cubo ",cElevado)
c elevado ao cubo  64.0
>>> print("c elevado a quarta ",cElevado4)
c elevado a quarta  256.0
>>> print("c elevado a quarta ",cElevadoD)
c elevado a quarta  1024.0
>>>
>>> x = 512
>>> x = pow(0,5)
>>> x
0.0
>>>
>>> raizQuadrada = 0
>>> x = 512
>>> raizQuadrada = x
>>> raizQuadrada = pow(1/3)

>>> raizQuadrada = pow(x, 1/3)
>>> raizQuadrada
7.999999999999999
>>> raizQuadrada = pow(x, 0,5)

>>> raizQuadrada = pow(x, 0.5)
>>> raizQuadrada
22.627416997969522
>>> # floor - retorna o maior valor inteiro
>>> # ceil - retorna o menos valor inteiro
>>> # round - retorna o valor inteiro mais proximo do maximo
>>> w = 3345.61

>>> from math import floor
>>> from math import ceil
>>> from math import round

>>> floor(w)
3345
>>> ceil(w)
3346
>>> round(w)
3346
>>>
