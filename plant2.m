clear
format compact

A = [0 1 0 0
     -2 -2 1 2
     0 0 0 1
     2 2 -2 -8];

B = [0 0
     2 -2
     0 0
     -2 4];
    
C = [1 0 0 0
     0 0 1 0];

D = [0 0
     0 0]

sysP = ss(A,B,C,D);
