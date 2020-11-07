clc
clear

#---------------------------//---------------------------#
#Reta com pontos em (0,0) e (3,9) plotada em uma matriz de 10 por 10
#{
Primeiro definimos o tamanho da matriz da qual queremos plotar a reta, depois
definimos dois pontos que ser�o sua representa��o no plano, ent�o com esses
valores definidos ser� criado um vetor contendo os valores de x dos dois 
pontos, e outro com os valores y, tais valores s�o passados por parametro
para a fun��o de rasteriza��o de retas, que retorna 2 vetores, um contendo
todos os pontos x e o outro os pontos de y, sendo a jun��o desses pontos uma 
representa��o do pixel que far� a descri��o da reta naquele plano.
Ap�s a rasteriza��o geraremos uma matriz de zeros com o tamanho que foi definido
no come�o do algoritmo, tendo de posse a matriz ela ser� passado por parametro
na fun��o que desenha reta, junto com os vetores de x e y, e dentro dessa
fun��o ser� feito uma convers�o das coordenadas, j� que no modelo de grafico
os pontos x e y come�am da esquerda pra direita partindo do ponto inferior
esquerda, enquanto no modelo de imagem o ponto de partida e superior esquerda,
ent�o durante a convers�o vai atribuindo valor 1 aos pixels que ir�o compor a
reta, e ao fim do algoritmo retorna a matriz com a reta desenhada.
Com isso a partir da matriz � gerada uma imagem, e vemos graficamente o
resultado que foi gerado pelo algoritmo.
Para as demais imagens foi utilizado um algoritmo de rescala, da qual recebia
como parametro os pontos de entrada e um valor da qual seria utilizado para
multiplicar os valores de entrada, devolvendo os valores numa nova escala.
Para algumas outras foram passados parametros em que o ponto 2 tinha as
coordenadas x > y, e x < y, alterando o fluxo que o algoritmo de rasteriza��o
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
#rescalada x10, agora seu ponto 2 ser� (30,90) e sua matriz 100x100
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
#rescalada x10, agora seu ponto 2 ser� (300,900) e sua matriz 1000x1000
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
#Simulando uma situa��o em que dx > dy
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
#Situa��o em que a reta est� na horizontal
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
#Situa��o em que a reta est� na vertical
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