clc
clear
close all

A = [1 0 5;0 1 0;0 1 1];
B = [1 0 5;0 1 5;1 0 1];
C = [2 0 0;0 1 5;0 0 1];
D = [2 0 0;0 2 5;0 0 1];

O1 = [0 0 1;0 2 1;1 2 1];
O2 = [0 0 1;0 2 1;2 0 1;2 2 1];
O3 = [0 0 1;0 4 1;2 4 1;2 0 1];
O4 = [0 0 1;1 3 1;3 3 1;4 0 1];

MatrizPontosO1 = [O1(1,1) O1(1,2);O1(2,1) O1(2,2);O1(3,1) O1(3,2)];
MatrizPontosO2 = [O2(1,1) O2(1,2);O2(2,1) O2(2,2);O2(3,1) O2(3,2);O2(4,1) O2(4,2);O2(1,1) O2(1,2)];
MatrizPontosO3 = [O3(1,1) O3(1,2);O3(2,1) O3(2,2);O3(3,1) O3(3,2);O3(4,1) O3(4,2);O3(1,1) O3(1,2)];
MatrizPontosO4 = [O4(1,1) O4(1,2);O4(2,1) O4(2,2);O4(3,1) O4(3,2);O4(4,1) O4(4,2);O4(1,1) O4(1,2)];

MatrizArestasO1 = [1 2;2 3;3 1];
MatrizArestasO2 = [1 2;2 3;3 4;4 1];
MatrizArestasO3 = [1 2;2 3;3 4;4 1];
MatrizArestasO4 = [1 2;2 3;3 4;4 1];

hold on
plotaFigura(MatrizPontosO1,MatrizArestasO1,'r');
newO1 = [O1*A];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'g');
newO1 = [O1*B];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'b');
newO1 = [O1*C];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'c');
newO1 = [O1*D];
newMatrizPontosO1 = [newO1(1,1) newO1(1,2);newO1(2,1) newO1(2,2);newO1(3,1) newO1(3,2)];
plotaFigura(newMatrizPontosO1,MatrizArestasO1,'y');
legend("Original");

figure
hold on
plotaFigura(MatrizPontosO2,MatrizArestasO2,'r');
newO2 = [O2*A];
newMatrizPontosO2 = [newO2(1,1) newO2(1,2);newO2(2,1) newO2(2,2);newO2(3,1) newO2(3,2);newO2(4,1) newO2(4,2)];
plotaFigura(newMatrizPontosO2,MatrizArestasO2,'g');
newO2 = [O2*B];
newMatrizPontosO2 = [newO2(1,1) newO2(1,2);newO2(2,1) newO2(2,2);newO2(3,1) newO2(3,2);newO2(4,1) newO2(4,2)];
plotaFigura(newMatrizPontosO2,MatrizArestasO2,'b');
newO2 = [O2*C];
newMatrizPontosO2 = [newO2(1,1) newO2(1,2);newO2(2,1) newO2(2,2);newO2(3,1) newO2(3,2);newO2(4,1) newO2(4,2)];
plotaFigura(newMatrizPontosO2,MatrizArestasO2,'c');
newO2 = [O2*D];
newMatrizPontosO2 = [newO2(1,1) newO2(1,2);newO2(2,1) newO2(2,2);newO2(3,1) newO2(3,2);newO2(4,1) newO2(4,2)];
plotaFigura(newMatrizPontosO2,MatrizArestasO2,'y');
legend("Original");

figure
hold on
plotaFigura(MatrizPontosO3,MatrizArestasO3,'r');
newO3 = [O3*A];
newMatrizPontosO3 = [newO3(1,1) newO3(1,2);newO3(2,1) newO3(2,2);newO3(3,1) newO3(3,2);newO3(4,1) newO3(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO3,'g');
newO3 = [O3*B];
newMatrizPontosO3 = [newO3(1,1) newO3(1,2);newO3(2,1) newO3(2,2);newO3(3,1) newO3(3,2);newO3(4,1) newO3(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO3,'b');
newO3 = [O3*C];
newMatrizPontosO3 = [newO3(1,1) newO3(1,2);newO3(2,1) newO3(2,2);newO3(3,1) newO3(3,2);newO3(4,1) newO3(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO3,'c');
newO3 = [O3*D];
newMatrizPontosO3 = [newO3(1,1) newO3(1,2);newO3(2,1) newO3(2,2);newO3(3,1) newO3(3,2);newO3(4,1) newO3(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO3,'y');
legend("Original");

figure
hold on
plotaFigura(MatrizPontosO4,MatrizArestasO4,'r');
newO4 = [O4*A];
newMatrizPontosO3 = [newO4(1,1) newO4(1,2);newO4(2,1) newO4(2,2);newO4(3,1) newO4(3,2);newO4(4,1) newO4(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO4,'g');
newO4 = [O4*B];
newMatrizPontosO3 = [newO4(1,1) newO4(1,2);newO4(2,1) newO4(2,2);newO4(3,1) newO4(3,2);newO4(4,1) newO4(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO4,'b');
newO4 = [O4*C];
newMatrizPontosO3 = [newO4(1,1) newO4(1,2);newO4(2,1) newO4(2,2);newO4(3,1) newO4(3,2);newO4(4,1) newO4(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO4,'c');
newO4 = [O4*D];
newMatrizPontosO3 = [newO4(1,1) newO4(1,2);newO4(2,1) newO4(2,2);newO4(3,1) newO4(3,2);newO4(4,1) newO4(4,2)];
plotaFigura(newMatrizPontosO3,MatrizArestasO4,'y');
legend("Original");