clc
clear

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


