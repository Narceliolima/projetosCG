clc
clear
close all

#--------------------------------//--------------------------------#
# 1° Questão
# A função "inv()" retorna uma matriz inversa, sendo passado por parametro
# uma matriz.
#a)
M1 = [1 1 0;3 1 1;4 2 2];
inv(M1)
#b)
M2 = [2 0 0;1 2 1;3 0 1];
inv(M2)

#--------------------------------//--------------------------------#
# 2° Questão
# Para sabermos se a reta é perpendicular, temos que aplicar a equação geral
# da reta, que se dá por, supondo que temos a reta A[x y] e a reta B[i j]
# teremos: a*i + y*j, se o resultado dessa soma for igual a zero, então a
# as retas serão perpendiculares, no octave utilizamos a.*b para multiplicar
# as células que estão na posição 1 e depois as que estão na posição 2, e
# com a função "sum()", somamos o novo vetor resultado.
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

# b),c),d) são perpendiculares

#--------------------------------//--------------------------------#
# 3° Questão
# para calcular o produto vetorial podemos utilizar a função "cross()"
# caso o novo vetor gerado seja um vetor de zeros, os vetores que foi
# feito o produto vetorial serão paralelos.
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

# c) é paralelo

#--------------------------------//--------------------------------#
# 4° Questão

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