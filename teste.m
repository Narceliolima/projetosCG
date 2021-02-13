clc
clear
close all

A = [1 0 5;0 1 0;0 1 1];
B = [1 0 5;0 1 5;1 0 1];
C = [2 0 0;0 1 5;0 0 1];
D = [2 0 0;0 2 5;0 0 1];

O1 = [0 0 1;0 2 1;1 2 1];

MatrizPontosO1 = [O1(1,1) O1(1,2);O1(2,1) O1(2,2);O1(3,1) O1(3,2)];

MatrizArestasO1 = [1 2;2 3;3 1];

newO1 = [O1*D];
newMatrizPontos = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];

plotaFigura(newMatrizPontos,MatrizArestasO1,'b');
plotaFigura(MatrizPontosO1,MatrizArestasO1,'b');

#{
hold on
plotaFigura(MatrizPontosO1,MatrizArestasO1,'r');
newO1 = [O1*A];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'g');
newO1 = [O1*B];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'b');
newO1 = [O1*C];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'c');
newO1 = [O1*D];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'y');
legend("Original");




#{
tam = 10;
p1 = [0 0];
p2 = [3 9];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2);

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);

imshow(imagem);
hold on
plot(x+0.5,tam-y+0.5,'s','markersize',25,px+0.5,tam-py+0.5);
#
[tam,p1,p2,px,py] = rescala(tam,p1,p2,px,py,10);

[x,y] = rasterizacaoDeRetas(p1,p2);

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);

figure
imshow(imagem);
hold on
plot(px+0.5,tam-py+0.5);
#
[tam,p1,p2,px,py] = rescala(tam,p1,p2,px,py,10)

[x,y] = rasterizacaoDeRetas(p1,p2);

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);
figure
imshow(imagem);
hold on
plot(px+0.5,tam-py+0.5);

#{
#Reta 1, pontos (0,0) e (9 3) deltaX > deltaY

#tam = 10;
tam = 500;
#p1 = [0 0];
#p2 = [9 3];
p1 = [0 0];
p2 = [450 150];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2);

#img = zeros(tam);
#image(img);
#hold on
#plot(x+1,tam-y,'s','markersize',25,px+1,tam-py);
plot(x,y,'s','markersize',25,px,py,tam,tam);

#Reta 2, pontos (0,0) e (3 9) deltaX < deltaY

tam = 10;
p1 = [0 0];
p2 = [3 9];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2);
figure
plot(x,y,'s','markersize',25,px,py,tam,tam);
#}


