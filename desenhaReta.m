function imagem = desenhaReta(imagem,x,y)
  
  tamImg = length(imagem);
  tamReta = length(x);
  n = 1;
  
  while n <= tamReta
    imagem(tamImg-(y(n)-0.5),x(n)+0.5) = 1;
    n++;
  endwhile
  
endfunction
