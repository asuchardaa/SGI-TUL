clear all; clc; close all; echo off

[data, fs] = audioread('ovcaci-housle.wav');
metadata = audioinfo('ovcaci-housle.wav');

%t=0:1/Fs:0.2;
samples = 256;
overlap = 128;
N = numel(data);
% vykreslení původního audia ovcaci
figure;
subplot(3,1,1);
dataTime = (0:N-1) / fs;
plot(dataTime, data);

% zcr vykreslení a funkce
frames = buffer(data,samples,overlap);
[row, columns] = size(frames);

for n = 1:columns
    zcr(n) = (1/(2*(N-1)))*sum(abs(diff(sign(frames(:,n)))));
end

% time = (0:overlap:N);
% time = time(1:end);
% time = (time / fs);
% time = (time*60);

subplot(3,1,2);
plot(zcr);

subplot(3,1,3);
spectrogram(data,hamming(samples), overlap, samples, fs, 'yaxis');
    
