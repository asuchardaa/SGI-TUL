clear all; clc; echo off; close all;

Fs = 10; % vzorkovací frekvence
t = 0:1/Fs:(2-(1/Fs)); % doba trvání (2s)

fce1 = cos(2*pi*4.*t); % 4 Hz
fce2 = cos(2*pi*2.5.*t); % 2.5 Hz
fce3 = cos(2*pi*12.*t); % 12 Hz
fce4 = cos(2*pi*7.25.*t); % 7.25 Hz

N = 10;
[X1] = DFT(fce1,N);
[X3] = DFT(fce2,N);
[X5] = DFT(fce3,N);
[X7] = DFT(fce4,N);

N = 20;
[X2] = DFT(fce1,N);
[X4] = DFT(fce2,N);
[X6] = DFT(fce3,N);
[X8] = DFT(fce4,N);

N = 10;

figure;
subplot(4,2,1);
stem(0:N-1, abs(X1), 'o');
title('N=10');
xlabel('f [Hz]');
ylabel('|A|');
subplot(4,2,3);
stem(0:N-1, abs(X3), 'o');
xlabel('f [Hz]');
ylabel('|A|');
subplot(4,2,5);
stem(0:N-1, abs(X5), 'o');
xlabel('f [Hz]');
ylabel('|A|');
subplot(4,2,7);
stem(0:N-1, abs(X7), 'o');
xlabel('f [Hz]');
ylabel('|A|');

N = 20;

subplot(4,2,2);
stem((0:N-1)./2, abs(X2), 'o');
title('N=20');
xlabel('f [Hz]');
ylabel('|A|');
subplot(4,2,4);
stem((0:N-1)./2, abs(X4), 'o');
xlabel('f [Hz]');
ylabel('|A|');
subplot(4,2,6);
stem((0:N-1)./2, abs(X6), 'o');
xlabel('f [Hz]');
ylabel('|A|');
subplot(4,2,8);
stem((0:N-1)./2, abs(X8), 'o');
xlabel('f [Hz]');
ylabel('|A|');



