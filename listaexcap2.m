clc
clear
close all

#--------------------------------//--------------------------------#
# 1� Quest�o
# A fun��o "inv()" retorna uma matriz inversa, sendo passado por parametro
# uma matriz.
#a)
M1 = [1 1 0;3 1 1;4 2 2];
inv(M1)
#b)
M2 = [2 0 0;1 2 1;3 0 1];
inv(M2)

#--------------------------------//--------------------------------#
# 2� Quest�o
# Para sabermos se a reta � perpendicular, temos que aplicar a equa��o geral
# da reta, que se d� por, supondo que temos a reta A[x y] e a reta B[i j]
# teremos: a*i + y*j, se o resultado dessa soma for igual a zero, ent�o a
# as retas ser�o perpendiculares, no octave utilizamos a.*b para multiplicar
# as c�lulas que est�o na posi��o 1 e depois as que est�o na posi��o 2, e
# com a fun��o "sum()", somamos o novo vetor resultado.
# a)
x = [1;2];
y = [3;4];
sum(x.*y)

# b)
x = [0;1];
y = [1;0];
sum(x.*y)

# c)
x = [0;2];
y = [2;0];
sum(x.*y)

# d)
x = [1;1];
y = [-1;1];
sum(x.*y)

# b),c),d) s�o perpendiculares

#--------------------------------//--------------------------------#
# 3� Quest�o
# para calcular o produto vetorial podemos utilizar a fun��o "cross()"
# caso o novo vetor gerado seja um vetor de zeros, os vetores que foi
# feito o produto vetorial ser�o paralelos.
# a)
x = [4;2;-1];
y = [1;-2;3];
cross(x',y')

# b)
x = [1;0;0];
y = [0;1;0];
cross(x',y')

# c)
x = [1;0;0];
y = [2;0;0];
cross(x',y')

# c) � paralelo

#--------------------------------//--------------------------------#
# 4� Quest�o

O = [0 0;2 0;1 1];
O = [O;O(1,:)];

M1 = [1.5 0.0;0.0 1.5];
M2 = [0.5 0.0;0.0 1.0];
M3 = [0.5 0.0;0.0 0.5];

MM = [M1;M2;M3];
[n,m] = size(MM);
i = 1;
hold on
plotaTriangulo(O);
legend('Original');

while i <= n
  
  newO = O*[MM(i,:);MM(i+1,:)]
  plotaTriangulo(newO);
  
  i+=2;
endwhile