% 武汉理工研究生复试MATLAB练习
% position 习题2.13
% data     0311

clc
clear all
close all

% x(n) = sin(5pi/8 * n + pi / 6) 
phase_init = pi / 6.0;
w_init = 5 * pi / 8.0;
A_init  = 1;
n = 0 : 1 : 999;
xn = A_init * sin(w_init * n + phase_init);

figure(1);
subplot(121);
stem(n, xn, '.'); grid on;
axis([0, 100, -1, 1]);
title(' x(n) = sin(5pi/8 * n + pi / 6)'); xlabel('n'); ylabel('x(n)');

% x(n) = e .^j(n/8 - pi)
n = 0 : 1 : 999;
n_temp = n / 8 + pi; 
xn = exp(1i * n_temp);
subplot(122);
stem(n, xn, '.'); grid on;
axis([0, 50, -1, 1]);
title(' x(n) = e .^(j(n/8 - pi)))'); xlabel('n'); ylabel('x(n)');






