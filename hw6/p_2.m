clear; close all; clc;

A = [-1 0 0; 0 -2 0; 0 0 -2];
B = [2 -2; -2 4; -4 2];
C = [1 1 0; 1 0 1];
D = [0 0; 0 0];

sys = ss(A,B,C,D);

% transmission zero
tz = tzero(minreal(sys));

syms s

s = tz;
% Rosenbrock
P = [s*eye(3)-A B; -C D];

% Null space of P are the initial condition and input that makes output
% zero
null_P = null(P);
x0_direction = -null_P(1:3);
u0 = null_P(4:5);

t = 0:0.1:10;
u = u0*exp(t);
x0 = x0_direction;
lsim(sys,u,t,x0)