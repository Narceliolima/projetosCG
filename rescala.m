function [tam,p1,p2,px,py] = rescala(tam,p1,p2,px,py,escala)
  
  if escala > 0
    escala = abs(escala);
    tam = tam*escala;
    p1 = [p1(1)*escala,p1(2)*escala];
    p2 = [p2(1)*escala,p2(2)*escala];
    px = [px(1)*escala,px(2)*escala];
    py = [py(1)*escala,py(2)*escala];
  else
    escala = abs(escala);
    tam = tam/escala;
    p1 = [p1(1)/escala,p1(2)/escala];
    p2 = [p2(1)/escala,p2(2)/escala];
    px = [px(1)/escala,px(2)/escala];
    py = [py(1)/escala,py(2)/escala];
  endif
  
endfunction
