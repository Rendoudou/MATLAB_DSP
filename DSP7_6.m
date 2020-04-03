% �人���о�������MATLAB��ϰ
% position ��7.6
% data     0404

clc
clear all
close all

%�б�ѩ�������� ��ͨ�˲���
fp =130; % hz
ft = 120;
fs = 1000;
rp = 1; % dB
rt = 40;

wp = fp * 2 * pi / fs / pi;
wt = ft * 2 * pi / fs / pi;

[n, wn] = cheb2ord(wp, wt, rp, rt);
[B, A] = cheby2(n, rt, wn, 'high'); % ����ϵͳ�����ķ�ĸ����ϵ���� rt�涨������Ƶ���Ӧ˥������
                                                         % �м��������Ҫ���涨���Ƶ��𶯷��ȣ��б�ѩ�������������в���
[H, W] = freqz(B, A, 1024, 'whole');

figure(1);
title('�б�ѩ����͸�ͨ�˲���');
plot(W / 2 / pi * fs, abs(H)); grid on;
xlabel('f/hz');
ylabel('H');

%�˲�ǰ��ĺ���ͼ��
n = 0 : 149;
T = 1 / fs;
t = n * T;
xn = 5 * sin(200 * pi * t) + 2 * cos(300 * pi * t);
yn = filter(B, A, xn);

figure(2);
subplot(211);
plot(t, xn); grid on;
title('xnû�о����˲���');
xlabel('t/s');
ylabel('xn');

subplot(212);
plot(t, yn); grid on;
title('xn�����˲���������yn');
xlabel('t/s');
ylabel('yn');

%��������������Ƶ��
N = 2048; % fft����
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