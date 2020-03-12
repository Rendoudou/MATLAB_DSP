% 武汉理工研究生复试MATLAB练习
% position 例2.8
% data     0310

clc
clear all
close all

% 输入序列
x_n = tripuls([1 : 30] - 15, 10);  %t : -14 - 15 该函数会自己找中点 -15使得图像居中
% n只能是整数
N1 = length(x_n);
x_n_1 = [x_n, zeros(1, 20)];

% 系统的冲击响应
n = 0 : 1 : 50 - 1; 
N2 = length(n);
h_n = 0.8 .^ n;

% 卷积得到输出
y_n = conv(x_n, h_n);
N3 = N1 + N2 -1;

%画图
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

