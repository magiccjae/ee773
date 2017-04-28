clear;
close all;
clc;

A = [-1 0; 0 -1];
B = eye(2);
C = [-1 1];

rank([B A*B])

rank([C; C*A])