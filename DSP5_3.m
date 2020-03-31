% 武汉理工研究生复试MATLAB练习
% position 例5.4
% data     0325

clc
clear all

%init
xn = 0.2 * (0 : 19);  % 0.2n * R19(n)
hn = 0.8 .^ (0 : 15);  % 0.8(n) * R15(n)

yn_conv = conv(xn, hn); % 卷积函数计算卷积
length_yn = length(xn) + length(hn) - 1; % 理论卷积结果长度

L = pow2(nextpow2(length_yn)); % 返回比输入值大的最小的2的指数值
xk = fft(xn, L);
hk = fft(hn, L); % 利用圆周卷积计算线性卷积
yk = xk .* hk; % 利用DFT变换来计算圆周卷积
yn_dft = ifft(yk); % 得到变换后的序列

figure(1);
subplot(211);
stem(0 : (length_yn-1), yn_conv, '.'); grid on;
subplot(212);
stem(0 : (length_yn-1), yn_dft(1 : length_yn), '.'); grid on; % matlab的列表的索引值是从1开始



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 