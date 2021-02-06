clc
clear
close all

P1 = [1 1];
P2 = [3 1];
P3 = [2 3];
MatrizTriangulo = [P1;P2;P3;P1];

M1 = [1 0.2;0 1];
M2 = [1 0;0.3 1];
M3 = [1 0.2;0.3 1];
MM = [M1;M2;M3];
[n,m] = size(MM);
i = 1;

hold on
plot(MatrizTriangulo(:,1),MatrizTriangulo(:,2))
vetLegend = ['TrianguloM1' 'TrianguloM2' 'TrianguloM3'];

while i<=n
  
  newMatrizTriangulo = MatrizTriangulo * [MM(i,:);MM(i+1,:)]';
  plot(newMatrizTriangulo(:,1),newMatrizTriangulo(:,2))
  i+=2;

endwhile

legend('Original','M1','M2','M3');