clear
format compact

numP = [0 1];
denP = [1 2 3];
[A,B,C,D] = tf2ss(numP,denP)
ss_P = ss(A,B,C,D);

T = [0 1
     1 0]

Mondai_2_10.m
↓
clear

format compact

A = [0 2
     -3 -5];

B = [0
     2];

C = [1 1];

D = 0;

ss_P = ss(A,B,C,D);
tf_P = tf(ss_P)

ss_P_min = ss(ss_P,'min');
[a,b,c,d] = ssdata(ss_P_min)
tf_P_min = tf(ss_P_min)