clear

format compact

numP = [4 8];
denP = [1 3 4 2];
[A,B,C,D] = tf2ss(numP,denP);
ss_P = ss(A,B,C,D);

T = [0 0 1
     0 1 0
     1 0 0]
ss_Pb = ss2ss(ss_P,T);
[Ac,Bc,Cc,Dc] = ssdata(ss_Pb)

State_space_new.m
↓
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

%ss_P = ss(A,B,C,D)

syms s
P = C*inv(s*eye(3)-A)*B+D
P = simplify(P)
P = collect(P,s)