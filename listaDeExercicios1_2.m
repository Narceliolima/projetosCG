clc
clear
close all

# 1) Questão
% lista de vertices
vertices = [2 2;1 1;3 1;1 0;3 0];
% lista de arestas
arestas = [2 1;1 3;3 2;3 5;5 4;4 2];
# Coordenada da camera
eye = [-3 1];
# Centro da figura
at = [(max(vertices(:,1))+min(vertices(:,1)))/2 ...
      (max(vertices(:,2))+min(vertices(:,2)))/2]
             
tamanho = length(vertices);
# Vetor de vertice estendido
verticesE = [];          
# Ao fim desse laço o vetor de vertice estendido será de tamanhox3
for i = 1:tamanho
  verticesE = [verticesE;vertices(i,:) 1];
end

hold on
plotaFigura(vertices,arestas,'b'); # Plota a figura inicial
plot(at(1),at(2),'*','MarkerSize',25); # Plota o ponto central da figura
n = at - eye
n = n/(sqrt(dot(n, n))) # Normaliza n
u = [-n(2) n(1)]
u = u/(sqrt(dot(u, u))) # Normaliza u
T = [1 0 -eye(1);0 1 -eye(2);0 0 1]
R = [u 0;n 0;0 0 1]
baseEye = R*T # Base da camera é R*T
# as novas coordenadas do vertice será o produto da baseEye com 
# o vertice extendido
verticesMundo = verticesE * inv(baseEye) 
figure
plotaFigura(verticesMundo,arestas,"r") # Plota nova figura para o eye[-3 1]


# Coordenada da camera
eye = [-2 -2];
n = at - eye
n = n/(sqrt(dot(n, n))) # Normaliza n
u = [-n(2) n(1)]
u = u/(sqrt(dot(u, u))) # Normaliza u
T = [1 0 -eye(1);0 1 -eye(2);0 0 1]
R = [u 0;n 0;0 0 1]
baseEye = R*T
verticesMundo = verticesE * inv(baseEye)
figure
plotaFigura(verticesMundo,arestas,"g") # Plota nova figura para o eye[-2 2]


# 2) Questão
% pontos da base inferior
pontos = [1 1 1;3 1 1;1 4 1;3 4 1];
% pontos da base superior
pontos = [pontos;1 1 3;3 1 3;1 4 3;3 4 3];
# vetor arestas
arestas = [1 2;2 4;4 3;3 1;5 7;7 8;8 6;6 5;1 5;3 7;4 8;2 6];
# Coordenada da camera
eye = [-2 1 1];
# Centro da figura
at = [(max(pontos(:,1))+min(pontos(:,1)))/2 ...
      (max(pontos(:,2))+min(pontos(:,2)))/2 ...
      (max(pontos(:,3))+min(pontos(:,3)))/2];
      
tamanho = length(pontos)
# Vetor de vertice estendido
pontosE = []
# Ao fim desse laço o vetor de vertice estendido será de tamanhox4
for i = 1:tamanho
  pontosE = [pontosE;pontos(i,:) 1];
end

figure            
hold on
plotaFigura3D(pontos,arestas,"r"); # Plota a figura inicial
# Plota o ponto central da figura
plot3(at(1),at(2),at(3),'*','MarkerSize',25);
n = at - eye
n = n/(sqrt(dot(n, n))) # Normaliza n
# É gerado um vetorAuxiliar aleatório para fazer o produto vetorial
# e encontrar u
vetorAuxiliar = [1 0 -2]
u = cross(n,vetorAuxiliar)
u = u/(sqrt(dot(u, u))) # Normaliza u
v = cross(n,u)
v = v/(sqrt(dot(v, v))) # Normaliza v
T = [1 0 0 -eye(1);0 1 0 -eye(2);0 0 1 -eye(3);0 0 0 1]
R = [u 0;v 0;n 0;0 0 0 1]
baseEye = R*T
# as novas coordenadas do vertice será o produto da baseEye com 
# o vertice extendido
pontosMundo = pontosE * inv(baseEye)
figure
plotaFigura3D(pontosMundo,arestas,"g"); # Plota nova figura para o eye[-2 1 1]


# Coordenada da camera
eye = [-3 -1 1];
n = at - eye
n = n/(sqrt(dot(n, n))) # Normaliza n
# Utiliza o vetorAuxiliar para fazer o produto vetorial com n e encontrar u
u = cross(n,vetorAuxiliar)
u = u/(sqrt(dot(u, u))) # Normaliza u
v = cross(n,u)
v = v/(sqrt(dot(v, v))) # Normaliza v
T = [1 0 0 -eye(1);0 1 0 -eye(2);0 0 1 -eye(3);0 0 0 1]
R = [u 0;v 0;n 0;0 0 0 1]
baseEye = R*T
pontosMundo = pontosE * inv(baseEye)
figure
plotaFigura3D(pontosMundo,arestas,"b"); # Plota nova figura para o eye[-3 -1 1]