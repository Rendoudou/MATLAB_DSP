% �人���о�������MATLAB��ϰ
% position ��7.4
% data     0403

clc
clear all
close all

%butterworth ��ͨ�˲���
fp =30; % hz
ft = 35;
fs = 100;
rp = 0.5; % dB
rt = 40;

wp = fp * 2 * pi / fs / pi;
wt = ft * 2 * pi / fs / pi;

[n, wn] = buttord(wp, wt, rp, rt, 'z');  %3dB��ֹ��
[B, A] = butter(n, wn, 'low');  % �����˲���ϵ�� ��ĸ�ͷ���

freqz(B, A, 512);

% [H, W] = freqz(B, A, 'whole'); % ר����������ɢϵͳƵ�����Եĺ���freqz()
% figure(1);
% title('��ͨ�˲���');
% plot(W / 2 / pi * fs, abs(H));
% xlabel('f/hz');
% ylabel('H');





