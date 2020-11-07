clc
clear

#---------------------------//---------------------------#
#Reta com pontos em (0,0) e (3,9) plotada em uma matriz de 10 por 10
#{
Primeiro definimos o tamanho da matriz da qual queremos plotar a reta, depois
definimos dois pontos que serão sua representação no plano, então com esses
valores definidos será criado um vetor contendo os valores de x dos dois 
pontos, e outro com os valores y, tais valores são passados por parametro
para a função de rasterização de retas, que retorna 2 vetores, um contendo
todos os pontos x e o outro os pontos de y, sendo a junção desses pontos uma 
representação do pixel que fará a descrição da reta naquele plano.
Após a rasterização geraremos uma matriz de zeros com o tamanho que foi definido
no começo do algoritmo, tendo de posse a matriz ela será passado por parametro
na função que desenha reta, junto com os vetores de x e y, e dentro dessa
função será feito uma conversão das coordenadas, já que no modelo de grafico
os pontos x e y começam da esquerda pra direita partindo do ponto inferior
esquerda, enquanto no modelo de imagem o ponto de partida e superior esquerda,
então durante a conversão vai atribuindo valor 1 aos pixels que irão compor a
reta, e ao fim do algoritmo retorna a matriz com a reta desenhada.
Com isso a partir da matriz é gerada uma imagem, e vemos graficamente o
resultado que foi gerado pelo algoritmo.
Para as demais imagens foi utilizado um algoritmo de rescala, da qual recebia
como parametro os pontos de entrada e um valor da qual seria utilizado para
multiplicar os valores de entrada, devolvendo os valores numa nova escala.
Para algumas outras foram passados parametros em que o ponto 2 tinha as
coordenadas x > y, e x < y, alterando o fluxo que o algoritmo de rasterização
ia tomar para poder rasterizar a reta.
#}

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