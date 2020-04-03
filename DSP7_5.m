% 武汉理工研究生复试MATLAB练习
% position 例7.5
% data     0404

clc
clear all
close all

%切比雪夫一型设计 带通滤波器
fp =[100, 200]; % hz
ft = [100 - 50, 200 + 50];
fs = 1000;
rp = 3; % dB
rt = 40;

wp = fp * 2 * pi / fs / pi;
wt = ft * 2 * pi / fs / pi;

%buttord 适合设计低通
[n, wn] = cheb1ord(wp, wt, rp, rt);
[B, A] = cheby1(n, rp, wn); % 返回系统函数的分母分子系数 rp规定通带波纹的衰减幅度
% [H, W] = freqz(B, A, 'whole');
% 
% figure(1);
% title('切比雪夫一型通带滤波器')
% plot(W / 2 / pi * fs, abs(H));
% xlabel('f/hz');
% ylabel('H');
freqz(B, A, 512, 'whole');
