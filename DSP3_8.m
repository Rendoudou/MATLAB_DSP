% �人���о�������MATLAB��ϰ
% position ��3.7
% data     0312

clc
clear all
close all

% H(z) = z / (z-0.3) = ( 1 - 1.5 / z ) / (1 + 0.2 / z - 0.8 / z / z);

bk = [1, -1.5];
ak = [1, 0.2, -0.8];
omega = -pi : pi / 512 : pi;

[H, w] = freqz(bk, ak, omega); % https://blog.csdn.net/machinelearning_er/article/details/79444352
                                                     % B��A�ֱ��Ӧ��ɢϵͳ��ϵͳ����H(z)�ķ��ӡ���ĸ����ʽ��ϵ������
Hf=abs(H); %ȡ����ֵʵ��
Hx=angle(H); %ȡ��λֵ��Ӧ��λ��

clf
figure(1)
subplot(311)
zplane(bk, ak); %���������
title('�㼫��ͼ'); xlabel('ʵ��'); ylabel('�鲿');

subplot(312)
plot(w,20*log(Hf)); %��ֵ�任Ϊ�ֱ���λ
title('��ɢϵͳ��Ƶ��������');

subplot(313);
plot(w,Hx);
title('��ɢϵͳ��Ƶ��������');