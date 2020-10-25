clc
clear

#Reta 1, pontos (0,0) e (9 3) deltaX > deltaY

tam = 10;
p1 = [0 0];
p2 = [9 3];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2);

img = zeros(tam);
image(img);
hold on
plot(x+1,tam-y,'s','markersize',25,px+1,tam-py);

#Reta 2, pontos (0,0) e (3 9) deltaX < deltaY

p1 = [0 0];
p2 = [3 9];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2);
figure
plot(x,y,'s','markersize',25,px,py,10,10);
