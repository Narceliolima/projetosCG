clc
clear
close all

MP = [0 0 0;0 3 0;3 3 0;3 0 0;0 0 3;0 3 3;3 3 3;3 0 3];
MF = [MP(1,:);MP(2,:);MP(3,:);MP(4,:);MP(1,:);
      MP(5,:);MP(6,:);MP(7,:);MP(8,:);MP(5,:);
      MP(3,:);MP(4,:);MP(8,:);MP(7,:);MP(3,:);
      MP(1,:);MP(2,:);MP(6,:);MP(5,:);MP(1,:);
      MP(2,:);MP(3,:);MP(7,:);MP(6,:);MP(2,:);
      MP(1,:);MP(4,:);MP(8,:);MP(5,:);MP(1,:)];
M1 = [1 0.4 0;0 1 0;0 0 1];
M2 = [1 0 0;0.4 1 0;0 0 1];
MM = [M1;M2];
      
i = 1;
j = 1;
[n,m] = size(MF);
hold on

while i<=n
  
  face = [MF(i,:);MF(i+1,:);MF(i+2,:);MF(i+3,:);MF(i+4,:)];
  plot3(face(:,1),face(:,2),face(:,3));
  i+=5;

endwhile

while j<=6
  
  i = 1;
  NewMF = MF*[MM(j,:);MM(j+1,:);MM(j+2,:)]';
  figure
  hold on
  
  while i<=n
  
    face = [NewMF(i,:);NewMF(i+1,:);NewMF(i+2,:);NewMF(i+3,:);NewMF(i+4,:)];
    plot3(face(:,1),face(:,2),face(:,3));
    i+=5;

  endwhile

  j+=3;
endwhile