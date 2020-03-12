% 武汉理工研究生复试MATLAB练习
% position 习题3.20
% data     0312

clc
clear all
close all

a = 0.8;
length_n = 100;
n = 0 : length_n - 1;

hn = a .^ n;
xn = [1 , 0, 2, zeros(1, length_n - 3)];
yn_1 = conv(hn, xn);
figure(1);
subplot(111);
stem(yn_1, '.'); grid on;

bk = [1, 0];
ak = [1, -a];
[h, w] = freqz(bk, ak);
figure(2);
subplot(211);
plot(w, abs(h)); grid on;

bk = [1, 0, 2];
ak = [1, 0];
[h, w] = freqz(bk, ak);
subplot(212);
plot(w, abs(h)); grid on;

bk = [1, 0, 2];
ak = [1, -0.8];
[h, w] = freqz(bk, ak);
figure(3);
subplot(211);
plot(w, abs(h)); grid on;
axis([0,4,0,20])

yn_fft = fft(yn_1, 1000);
subplot(212);
w = 0 : length(yn_fft) - 1;
wn = w * 2 * pi / 1000 ;
plot(wn(1 : ceil( length(yn_fft) / 2)), abs(yn_fft(1 : ceil( length(yn_fft) / 2)))); grid on;
axis([0,4,0,20])

