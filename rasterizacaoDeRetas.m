function [v1,v2] = rasterizacaoDeRetas(p1,p2)
   
  x = p1(1);
  y = p1(2);
  dx = p2(1) - p1(1);
  dy = p2(2) - p1(2);
  
  [v1,v2] = produzFragmento(x,y);
  
  if abs(dx) > abs(dy)
    m = dy/dx;
    b = y - m*x;
    while x < (p2(1)-1)
      x = x + 1;
      y = m*x + b;
      x
      y
      #[v1(x+1),v2(x+1)] = produzFragmento(x,y);
      [v1(end+1),v2(end+1)] = produzFragmento(x,y);
    endwhile
  else
    m = dx/dy;
    b = x - m*y;
    while y < (p2(2)-1)
      y = y + 1;
      x = m*y + b;
      [v1(end+1),v2(end+1)] = produzFragmento(x,y);
    endwhile
  endif
  
endfunction
