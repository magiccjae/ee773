clear; close all; clc;

A = [2 0 0; 0 -1 0; 0 0 -1];
B = [1 0; 1 0; 0 1];
C = [1 0 2; 0 -1 0];
D = [1 0; 1 0];

sys = ss(A,B,C,D);

syms s

tzero(minreal(sys))
T = C*inv(s*eye(3)-A)*B+D;
rank(T)
s = 0;
T1 = C*inv(s*eye(3)-A)*B+D;
rank(T1)
pole(sys)

%% 2
s=100;
% Rosenbrock
P = [s*eye(3)-A B;
     -C D];
% det(P)
% tzero(sys)

