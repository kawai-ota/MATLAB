clear
format compact

J = 0.1;
mu = 0.2;
A = [0 1
     0 -mu/J]
B = [0
     1/J]
C = [0 1]
D = 0
ss_P = ss(A,B,C,D);
tf_P = tf(ss_P)

ss_P_min = ss(ss_P,'min');
[a,b,c,d] = ssdata(ss_P_min)
tf_P_min = tf(ss_P_min)

State_space.m

clear
format compact

A = [0 1 0
    0 0 1
    -2 -4 -3];
B = [0
     0
     1];

C = [8 4 0];
D = 0;

ss_P = ss(A, B, C, D);