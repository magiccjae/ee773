clear; clc;

syms w

A = [0 1 0 0;
     3*w^2 0 0 2*w;
     0 0 0 1;
     0 -2*w 0 1];
B = [0 0;
     1 0;
     0 0;
     0 0];
 
ctrl_matrix = [B A*B A*A*B A*A*A*B];

rank(ctrl_matrix)