% 武汉理工研究生复试MATLAB练习
% position 例4.7
% data     0319

clc
clear all


%%%采样得到信号序列%%%

%init
f = 0.25; %hz
k = 8;
fs = k * 0.25;
N1 = 48; %fft长度
N2 = 32;
n1 = 0 : N1-1;
n2 = 0 : N2-1;
t1 = n1 * (1/ fs);
t2 = n2 * (1/ fs);

xn1 = cos(2 * pi * f * t1);
xn2 = cos(2 * pi * f * t2);

figure(1);
subplot(221);
stem(n1, xn1, '.'); grid on;
subplot(222);
xk1 = fft(xn1);
stem(n1/N1*fs ,abs(xk1), '.');grid on;

subplot(223);
stem(n2, xn2, '.'); grid on;
subplot(224);
xk2 = fft(xn2);
stem(n2/N2*fs, abs(xk2), '.');grid on;


 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 