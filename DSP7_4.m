% 武汉理工研究生复试MATLAB练习
% position 例7.4
% data     0403

clc
clear all
close all

%butterworth 低通滤波器
fp =30; % hz
ft = 35;
fs = 100;
rp = 0.5; % dB
rt = 40;

wp = fp * 2 * pi / fs / pi;
wt = ft * 2 * pi / fs / pi;

[n, wn] = buttord(wp, wt, rp, rt, 'z');  %3dB截止点
[B, A] = butter(n, wn, 'low');  % 返回滤波器系数 分母和分子

freqz(B, A, 512);

% [H, W] = freqz(B, A, 'whole'); % 专门用于求离散系统频响特性的函数freqz()
% figure(1);
% title('低通滤波器');
% plot(W / 2 / pi * fs, abs(H));
% xlabel('f/hz');
% ylabel('H');





