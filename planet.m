clear
format compact

A = [0 1
    -10 -2]

B = [0
    1]

C = [1,0];
D = 0;

sysP = ss(A,B,C,D);
