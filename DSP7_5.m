% �人���о�������MATLAB��ϰ
% position ��7.5
% data     0404

clc
clear all
close all

%�б�ѩ��һ����� ��ͨ�˲���
fp =[100, 200]; % hz
ft = [100 - 50, 200 + 50];
fs = 1000;
rp = 3; % dB
rt = 40;

wp = fp * 2 * pi / fs / pi;
wt = ft * 2 * pi / fs / pi;

%buttord �ʺ���Ƶ�ͨ
[n, wn] = cheb1ord(wp, wt, rp, rt);
[B, A] = cheby1(n, rp, wn); % ����ϵͳ�����ķ�ĸ����ϵ�� rp�涨ͨ�����Ƶ�˥������
% [H, W] = freqz(B, A, 'whole');
% 
% figure(1);
% title('�б�ѩ��һ��ͨ���˲���')
% plot(W / 2 / pi * fs, abs(H));
% xlabel('f/hz');
% ylabel('H');
freqz(B, A, 512, 'whole');
