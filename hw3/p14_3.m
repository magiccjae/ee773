clear; clc;

syms a1 a2 a3 real

q = [1 a1 a2; 0 1 a1; 0 0 1];
w = [-a1 -a2 -a3; 1 0 0; 0 1 0];
e = [1 a1 a2; 0 1 a1; 0 0 1];
e_inv = simplify(inv(e));

q*w*e_inv