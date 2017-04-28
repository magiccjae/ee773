clear; clc; close all;

syms s

A = [-1 0 0 0 0;
     1 -2 0 0 0;
     1 0 -2 0 0;
     1 0 0 -2 0;
     1 0 0 0 -2];

% rank(A+2*eye(5))
 
% [V,D] = eig(A)

[P, J] = jordan(A)

