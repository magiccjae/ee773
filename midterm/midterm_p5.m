clear; close all; clc;

a = [-0.1 2; 0 -1];
b = [10; 0.1];
c = [0.1 -1];
sys = ss(a,b,c,0);

[y,t,x] = step(sys);

figure(1); hold on;
title('x1');
xlabel('t');
ylabel('x1');
plot(t,x(:,1));
xlim([0 90]);
ylim([0 110]);

figure(2); hold on;
title('x2');
xlabel('t');
ylabel('x2');
plot(t,x(:,2));
xlim([0 90]);
ylim([0 0.2]);

figure(3); hold on;
title('y');
xlabel('t');
ylabel('y');
plot(t,y);
xlim([0 90]);
ylim([0 12]);

% a system with new state
a = [-0.1 0.001; 0 -1];
b = [1; 20];
c = [1 -0.005];
sys = ss(a,b,c,0);

[y,t,x] = step(sys);

figure(4); hold on;
title('x1 bar');
xlabel('t');
ylabel('x1 bar');
plot(t,x(:,1));
xlim([0 90]);
ylim([0 12]);

figure(5); hold on;
title('x2 bar');
xlabel('t');
ylabel('x2 bar');
plot(t,x(:,2));
xlim([0 90]);
ylim([0 22]);

figure(6); hold on;
title('y');
xlabel('t');
ylabel('y');
plot(t,y);
xlim([0 90]);
ylim([0 12]);
