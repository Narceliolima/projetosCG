clc

x = [1 0];
y = [0 2];
sum(x.*y)

x = [1 1];
y = [0 1];
sum(x.*y)

x = [4 2 1];
y = [1 2 3];
cross(x,y)

x = [-1 0 0];
y = [0 1 0];
cross(x,y)
#{
% lista de vertices
O = [0 0;2 0;1 1];
% lista de arestas
A = [1 3;3 2;2 1];

M1 = [2.0 0.0;0.0 1.0];
M2 = [0.5 0.0;0.0 1.0];
M3 = [0.5 0.0;0.0 0.5];

newO = O*M3
#hold on
#plotaFigura(O,A,"r");
#plotaFigura(newO,A,"b");
#}
#{
% lista de vertices
O = [0 0;0 1;2 1;2 0];
% lista de arestas
A = [1 2;2 3;3 4;4 1];

M1 = [cos(pi/2) -sin(pi/2);sin(pi/2) cos(pi/2)];
M2 = [cos(-(pi/2)) -sin(-(pi/2));sin(-(pi/2)) cos(-(pi/2))];

Olinha = O*M1
O2linha = O*M2

hold on
plotaFigura(O,A,"r");
plotaFigura(Olinha,A,"b");
plotaFigura(O2linha,A,"g");
#}

% lista de vertices
O = [0 0 1;1 0 1;0.5 2 1]
% lista de arestas
A = [1 3;3 2;2 1];
M = [2 0 2;0 0.5 1;0 0 1];

newO = O*M'

hold on
plotaFigura(O,A,"r");
plotaFigura(newO,A,"b");