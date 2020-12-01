clc
clear
close all

# 1° Questão

M1 = [1 1 0;3 1 1;4 2 2];
M2 = [2 0 0;1 2 1;3 0 1];

inv(M1)
inv(M2)

# 2° Questão

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

# b),c),d) perpendiculares

# 3° Questão

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
  
  newO = O*[MM(i,:);MM(i+1,:)];
  plotaTriangulo(newO);
  
  i+=2;
endwhile