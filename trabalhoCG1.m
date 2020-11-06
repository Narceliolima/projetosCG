clc
clear

#---------------------------//---------------------------#
#Reta com pontos em (0,0) e (3,9) plotada em uma matriz de 10 por 10
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
plot(px+0.5,tam-py+0.5);
#---------------------------//---------------------------#
#Reta com pontos em (0,0) e (3,9) plotada em uma matriz de 10x10
#rescalada x10, agora seu ponto 2 será (30,90) e sua matriz 100x100
[tam,p1,p2,px,py] = rescala(tam,p1,p2,px,py,10);

[x,y] = rasterizacaoDeRetas(p1,p2);

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);

figure
imshow(imagem);
hold on
plot(px+0.5,tam-py+0.5);
#---------------------------//---------------------------#
#Reta com pontos em (0,0) e (30,90) plotada em uma matriz de 100x100
#rescalada x10, agora seu ponto 2 será (300,900) e sua matriz 1000x1000
[tam,p1,p2,px,py] = rescala(tam,p1,p2,px,py,10);

[x,y] = rasterizacaoDeRetas(p1,p2);

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);
figure
imshow(imagem);
hold on
plot(px+0.5,tam-py+0.5);
#---------------------------//---------------------------#
#Reta com pontos em (0,0) e (85,20) plotada em uma matriz de 100x100
#Simulando uma situação em que dx > dy
tam = 100;
p1 = [0 0];
p2 = [85 20];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2);

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);
figure
imshow(imagem);
hold on
plot(px+0.5,tam-py+0.5);
#---------------------------//---------------------------#
#Situação em que a reta está na horizontal
tam = 100;
p1 = [20 50];
p2 = [80 50];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2)

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);
figure
imshow(imagem);
hold on
plot(px+0.5,tam-py+0.5);
#---------------------------//---------------------------#
#Situação em que a reta está na vertical
tam = 100;
p1 = [50 20];
p2 = [50 80];
px = [p1(1),p2(1)];
py = [p1(2),p2(2)];

[x,y] = rasterizacaoDeRetas(p1,p2);

imagem = zeros(tam);
imagem = desenhaReta(imagem,x,y);
figure
imshow(imagem);
hold on
plot(px+0.5,tam-py+0.5);