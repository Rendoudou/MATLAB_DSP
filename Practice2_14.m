% �人���о�������MATLAB��ϰ
% position ϰ��2.14
% data     0311

clc
clear all
close all

% 2.3.1
xn = [1, zeros(1, 99)];  % ����100
hn = [ones(1,5), zeros(1, 95)];
yn = conv(xn ,hn);  % ����Ϊ199
n = 0 : length(yn) - 1;
figure(1);
subplot(411);
stem(n, yn, '.'); grid on;
title(' 2.3.1 '); xlabel('n'); ylabel('y(n)');

% 2.3.2
xn2 = ones(1, 100);  % ����100
hn2 = ones(1,100);
yn2 = conv(xn2 ,hn2);  % ����Ϊ199
n2 = 0 : length(yn2) - 1;
figure(1);
subplot(412);
stem(n2, yn2, '.'); grid on;
title(' 2.3.2 '); xlabel('n'); ylabel('y(n)');

% 2.3.3
xn3 = [zeros(1,2), 1, zeros(1, 97)];  % ����100
hn3 = 0.5.^(0 : 99); % ����100
yn3 = conv(xn3 ,hn3);  % ����Ϊ199
n3 = 0 : length(yn3) - 1;
figure(1);
subplot(413);
stem(n3, yn3, '.'); grid on;
title(' 2.3.3 '); xlabel('n'); ylabel('y(n)');

% 2.3.4 ? ʵ�ַ�����źŵľ����
xn4 = [zeros(1,2), 1, zeros(1, 97)];  % ����100
hn4 = 0.5.^(0 : 99); % ����100
yn4 = conv(xn4 ,hn4);  % ����Ϊ199
n4 = 0 : length(yn4) - 1;
figure(1);
subplot(414);
stem(n4, yn4, '.'); grid on;
title(' 2.3.3 '); xlabel('n'); ylabel('y(n)');





