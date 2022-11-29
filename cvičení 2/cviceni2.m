clear all; clc; close all;

Fs = 8; % vzorkovací frekvence
T = 2; % čas
Ts = 1/Fs; % vzorkovací perioda

t = 0:Ts:T-Ts; % od nuly po čase do konce vzorkovací periody

A = 4;
f = 2;
fi = pi/2;
M = 0;

x = A*cos(2*pi*f*t+fi) + M;

subplot(2,1,1)
plot(t,x);
title('Graf');
xlabel('t [s]');
ylabel('x(t)');
subplot(2,1,2);
stem(t,x);
title('Stem');
xlabel('t [s]');
ylabel('x(t)');
