% 武汉理工研究生复试MATLAB练习
% position 习题2.15
% data     0311

clc
clear all
close all

% xa(t) = cos(2*pi*f*t + phase

f_init = 20; % hz
fs = 50; % hz
phase_init = pi / 2; %phase
n_fft = 2048;
t = 0 : 1/fs : n_fft / fs - 1/fs ;
n_get = length(t); % 采样长度
f0 = fs / n_fft; % 离散周期频谱的频谱分辨率

%采样
xn = cos(2 * pi * f_init * t + phase_init);
n = 0 : length(xn) - 1;
figure(1);
subplot(211);
stem(n, xn, '.'); grid on;
title(' 2.12 '); xlabel('n'); ylabel('x(n)');

%fft
% 采样点数和采样频率，将会影响fft频谱分辨率
fn = fft(xn, n_fft);
wn_fft = (0 : n_fft - 1) * 2 * pi / n_fft - pi; % 归一化
subplot(212);
stem(wn_fft, abs(fn), '.'); grid on; %采样后 频谱搬移 往正负频率搬移fs
title(' 2.12 '); xlabel('n'); ylabel('x(n)');
