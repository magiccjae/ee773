clear; close all; clc;
load('pendulum.mat');

%% Part a)
B_force = [0; 0; 0.1; -0.1];
w
CM = ctrb(A,B_force);
if rank(CM)~=4
    display('not controllable');
else
    display('controllable with only Force input');
end

% since the system is controllable, 'place' command can be used to place
% the poles to the desired location.
P = [-1; -2; -1-1j; -1+1j];     % desired pole locations
K = place(A,B_force,P);

C = eye(4);
D = zeros(4,1);

% created a system with full-state feedback
sys = ss(A-B_force*K, zeros(4,1), C, D);

%% Part b)
x0 = [1; -0.2; 2; -0.1];
figure(1);
initial(sys,x0);
[y,t,x] = initial(sys,x0);
% plotting F
figure(2);
plot(t, -K*x');  % u = -kx = F
title('force input(F)');
xlabel('time');
ylabel('force input(F)');


%% Part c)

t = 0:0.1:1000;

% sinusoidal reference input
frequency = 0.04;
x_r = [sin(frequency*t); zeros(1,length(t)); zeros(1,length(t)); zeros(1,length(t))];

sys = ss(A-B_force*K, B_force, C, D);

figure(3);
lsim(sys,K*x_r,t,x0);
[y,t,x] = lsim(sys,K*x_r,t,x0);

figure(4);
% error plot. With frequency less than 0.04, error is less than 10% of p_d.
error = x(:,1)'-x_r(1,:);
plot(t,error);
title('error(x-x_desired)');
xlabel('t');
ylabel('error');

% Part d)
figure(5);
% constant reference input
x_r = [10; 0; 0; 0];
lsim(sys,K*x_r*t,t,x0);
% Position keeps on growing for a constant desired position. Something must
% be wrong.
