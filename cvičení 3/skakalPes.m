clear all; close all; clc; echo off

Fs = 8000;
BPM = 200;
Ts = 1/Fs;
q = 2^(1/12);

A4 = 440;
C5 = 261.65;
G4 = A4/q^2;
E = 329.65;
F = 349.25;
D = 293.65;

Nota_cela = BPM/60;
Nota_pulova = Nota_cela / 2; %Pulova nota = 0.6
Nota_ctvrtova = Nota_cela / 4; %Ctvrtova nota = 0.3
Takt_pulovy = 1/Fs:1/Fs:Nota_pulova; %Pulovy takt - Pomalejsi
Takt_ctvrtovy = 1/Fs:1/Fs:Nota_ctvrtova; %Ctvrtovy takt - Rychlejsi
T_pauza = Ts:Ts:Nota_cela;

sigA4 = cos(2*pi*A4*Takt_ctvrtovy);
sigG4 = cos(2*pi*G4*Takt_ctvrtovy);
sigE4 = cos(2*pi*E*Takt_ctvrtovy);
sigF4 = cos(2*pi*F*Takt_ctvrtovy);
sigD4 = cos(2*pi*E*Takt_ctvrtovy);
sigE4_pul = cos(2*pi*E*Takt_pulovy);
sigF4_pul = cos(2*pi*F*Takt_pulovy);
sigG4_pul = cos(2*pi*G4*Takt_pulovy);
sig_pauza = sigA4*0;


sig = [sigG4, sigG4, sigE4, sig_pauza, sigG4, sigG4, sigE4, sig_pauza, sigG4, sigG4, sigA4, sigG4, sigG4_pul, sigF4_pul, sig_pauza, sig_pauza, sigF4, sigF4, sigD4, sig_pauza, sigF4, sigF4, sigD4, sig_pauza, sigF4, sigF4, sigG4, sigF4, sigF4_pul, sigE4_pul];
sound(sig, Fs)