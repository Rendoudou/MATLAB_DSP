% 武汉理工研究生复试MATLAB练习
% position 例7.6
% data     0404

clc
clear all
close all

%切比雪夫二型设计 高通滤波器
fp =130; % hz
ft = 120;
fs = 1000;
rp = 1; % dB
rt = 40;

wp = fp * 2 * pi / fs / pi;
wt = ft * 2 * pi / fs / pi;

[n, wn] = cheb2ord(wp, wt, rp, rt);
[B, A] = cheby2(n, rt, wn, 'high'); % 返回系统函数的分母分子系数， rt规定阻带波纹的理应衰减幅度
                                                         % 中间参数很重要，规定波纹的震动幅度，切比雪夫二型是在阻带有波纹
[H, W] = freqz(B, A, 1024, 'whole');

figure(1);
title('切比雪夫二型高通滤波器');
plot(W / 2 / pi * fs, abs(H)); grid on;
xlabel('f/hz');
ylabel('H');

%滤波前后的函数图像
n = 0 : 149;
T = 1 / fs;
t = n * T;
xn = 5 * sin(200 * pi * t) + 2 * cos(300 * pi * t);
yn = filter(B, A, xn);

figure(2);
subplot(211);
plot(t, xn); grid on;
title('xn没有经过滤波器');
xlabel('t/s');
ylabel('xn');

subplot(212);
plot(t, yn); grid on;
title('xn经过滤波器后的输出yn');
xlabel('t/s');
ylabel('yn');

%作出输入和输出的频谱
N = 2048; % fft点数
Xk = fft(xn, N);
Yk = fft(yn, N);

figure(3);
subplot(211);
stem((0 : N - 1) / N * fs, abs(Xk), '.'); grid on;
title('xk');
xlabel('f/hz');
ylabel('xk');

subplot(212);
stem((0 : N - 1) / N * fs, abs(Yk), '.'); grid on;
title('yk');
xlabel('f/hz');
ylabel('yk');