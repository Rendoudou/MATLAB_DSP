% �人���о�������MATLAB��ϰ
% position ϰ��2.15
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
n_get = length(t); % ��������
f0 = fs / n_fft; % ��ɢ����Ƶ�׵�Ƶ�׷ֱ���

%����
xn = cos(2 * pi * f_init * t + phase_init);
n = 0 : length(xn) - 1;
figure(1);
subplot(211);
stem(n, xn, '.'); grid on;
title(' 2.12 '); xlabel('n'); ylabel('x(n)');

%fft
% ���������Ͳ���Ƶ�ʣ�����Ӱ��fftƵ�׷ֱ���
fn = fft(xn, n_fft);
wn_fft = (0 : n_fft - 1) * 2 * pi / n_fft - pi; % ��һ��
subplot(212);
stem(wn_fft, abs(fn), '.'); grid on; %������ Ƶ�װ��� ������Ƶ�ʰ���fs
title(' 2.12 '); xlabel('n'); ylabel('x(n)');
