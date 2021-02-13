clc
clear
close all

# Questão 1
# a)
O = [0 0;0 1;1 1;1 0;0 0]; # Matriz de pontos do quadrado
M1 = [cos(pi/4) -sin(pi/4);sin(pi/4) cos(pi/4)]; 
M2 = [cos(pi/2) -sin(pi/2);sin(pi/2) cos(pi/2)];
M3 = [cos((3*pi)/4) -sin((3*pi)/4);sin((3*pi)/4) cos((3*pi)/4)];
M4 = [cos(pi) -sin(pi);sin(pi) cos(pi)];

hold on

plot(O(:,1),O(:,2));
newO = O*M1';
plot(newO(:,1),newO(:,2));
newO = O*M2';
plot(newO(:,1),newO(:,2));
newO = O*M3';
plot(newO(:,1),newO(:,2));
newO = O*M4';
plot(newO(:,1),newO(:,2));

legend("Original","M1","M2","M3","M4");

# Ele rotacionou em relação ao ponto (0,0)
# b)
Olinha = [-1 -1;1 -1;-1 1;1 1]; # O'
figure
hold on

plot(Olinha(:,1),Olinha(:,2));
newO = Olinha*M1';
plot(newO(:,1),newO(:,2));
newO = Olinha*M2';
plot(newO(:,1),newO(:,2));
newO = Olinha*M3';
plot(newO(:,1),newO(:,2));
newO = Olinha*M4';
plot(newO(:,1),newO(:,2));

legend("Original","M1","M2","M3","M4");

# Ele rotacionou em relação ao seu centro

# Questão 2
figure
hold on
plot(O(:,1),O(:,2));
newO = O*M1;
plot(newO(:,1),newO(:,2));

legend("Original","M1");

# Tomando como base a matriz de rotação no sentido anti-horário, e só
#"inverte-la" ou seja, transformar a matriz coluna em uma matriz linha.