function plotaFigura(matrizPontos,matrizArestas,cor)
  
  [n,m] = size(matrizArestas);
  
  hold on
  
  for i = 1:n
    plotaReta(matrizPontos(matrizArestas(i,1),:),matrizPontos(matrizArestas(i,2),:),cor);
  end
  
endfunction