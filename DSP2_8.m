% �人���о�������MATLAB��ϰ
% position ��2.8
% data     0310

clc
clear all
close all

% ��������
x_n = tripuls([1 : 30] - 15, 10);  %t : -14 - 15 �ú������Լ����е� -15ʹ��ͼ�����
% nֻ��������
N1 = length(x_n);
x_n_1 = [x_n, zeros(1, 20)];

% ϵͳ�ĳ����Ӧ
n = 0 : 1 : 50 - 1; 
N2 = length(n);
h_n = 0.8 .^ n;

% ����õ����
y_n = conv(x_n, h_n);
N3 = N1 + N2 -1;

%��ͼ
figure(1)
subplot(3, 1, 1);
stem(0: length(x_n_1) - 1,x_n_1, 'fill');
title('x(n)')

subplot(3, 1, 2);
stem(n, h_n, 'fill');
title('h(n)')

subplot(3, 1, 3);
stem(0 : N3 - 1, y_n, 'fill');
title('y(n)')

