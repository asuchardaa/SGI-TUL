clear all; clc; close all;

% 1. signál
Fs = 20;
T = 2;
Ts = 1/Fs;

t = 0:Ts:T-Ts;
A = 2;
f = 4;
fi = pi/3;

M = 0;

% 2. signál
t2 = 0:Ts:T-Ts;
A2 = 4;
f2 = 2;
fi2 = pi/4;

x = A*cos(2*pi*f*t+f) + M;
x2 = A2*cos(2*pi*f2*t2+f2) + M;

subplot(2,2,1)
stem(t,x);
title('Signál 1');
xlabel('t [s]');
ylabel('x(t)');

subplot(2,2,2);
stem(t2,x2);
title('Signál 2');
xlabel('t [s]');
ylabel('x(t)');


subplot(2,1,2);
x3 = x+x2;
t3 = 0:0.01:2;
stem(t2,x3);
title('Součet');
xlabel('t [s]');
ylabel('x(t)');
