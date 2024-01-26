clear
format compact

A = [0  1
     4 4];

B = [0
     7];
    
C = [1,0];
D = 0;

sysP = ss(A,B,C,D);
