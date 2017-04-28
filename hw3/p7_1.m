clear; clc;

syms w
A = [0 -2*w^2 0 -w^4 0;
     1 0 0 0 0;
     0 1 0 0 0;
     0 0 1 0 0;
     0 0 0 1 0];
 
eigen = eig(A)
[P,J] = jordan(A)
