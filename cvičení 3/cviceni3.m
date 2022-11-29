clear all; close all;

Fs = 8000;
T = 2;
Ts = 1/Fs;
t = 0:Ts:T-Ts;

FA4 = 420;
FA3 = 450;

sigA4 = cos(2*pi*FA4*t);
sigA3 = cos(2*pi*FA3*t);

%sig = [sigA4 sigA3 sigA4];
sig = sigA4 + sigA3;

sound(sig, Fs)
