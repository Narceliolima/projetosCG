function [xp,yp] = produzFragmento(x,y)
  
  xm = floor(x);
  ym = floor(y);
  
  xp = xm + 0.5;
  yp = ym + 0.5;
  
  #p = [xp,yp];
  
endfunction
