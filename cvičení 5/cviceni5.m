clc;
clear all;
close all;

f=2; % frekvence 2Hz
Fs=1000; % vzorkovací frekvence
PocetSlozekRady=1000;
t=0:(1/Fs):1; % časový interval
X1=zeros(size(t));
X2=X1;

% x1(t)
for n=1:2:PocetSlozekRady
    X1=X1+cos(2*pi*n*f*t-(pi/2))./n;
end

% OS
subplot(2,2,1);
plot(t,X1);
title('Obdélníkový signál');
xlabel('t[sec]');
ylabel('A');

% MS OS
N=1000;
f=0:Fs/N:Fs/2-Fs/N;
X=fft(X1,N);
subplot(2,2,2);
stem(f(1:40),1/(N/2)*abs(X(1:40)),'.');
title('OS - magnitudové spektrum');
ylabel('|A|');
xlabel('f[Hz]');
f=2;

% x2(t)
for n=1:PocetSlozekRady
    X2=X2+cos(2*pi*n*f*t-(pi/2))./n;
end

% PS
subplot(2,2,3);
plot(t,X2);
title('Pilový signál');
ylabel('A');
xlabel('t[sec]');

% MS PS
f=0:Fs/N:Fs/2-Fs/N;
X=fft(X2,N);
subplot(2,2,4);
stem(f(1:40),1/(N/2)*abs(X(1:40)),'.');
title('PS - magnitudové spektrum');
ylabel('|A|');
xlabel('f[Hz]');
