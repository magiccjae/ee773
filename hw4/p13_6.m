clear; clc;

A = [-1 0; 0 -1];
B = [-1; 1];
C = [1 0; 0 1];
D = [2; 1];

sys = ss(A,B,C,D);

tf = ss2tf(A,B,C,D)

A1 = [-1 0; 0 -1];
B1 = [-1; 0];
C1 = [1 1; -1 1];
D1 = [2; 1];

tf1 = ss2tf(A1,B1,C1,D1)

