% 武汉理工研究生复试MATLAB练习
% position 例6.4
% data     0331

clc
clear all
close all

%Global Parameter
B = [1, -2, 30, 14, 5]; %H(Z) 分子
A = [1, 5, 4, 4, -2, -1]; %H(Z) 分母
A_test = [5, 4, 4, -2, -1];

%产生单位冲击响应
xn = impseq(0, 0, 25); %xn长度是50
hn = filter(B, A, xn);  % A 与 B 描述了差分方程，xn是输入信号。
                                    % filter函数是一维的数字滤波器
                                    % 此时先求由单位冲击函数引起的单位冲激响应
                                    % B是分子系数 与输入有关，A是分母系数 与输出有关
hn_test = filter(B, A_test, xn);

n = 0 : length(hn) - 1;
figure(1)
subplot(411)
stem(n, hn, '.'); grid on;
title('产生单位冲击响应');  xlabel('n'); ylabel('h(n)');

subplot(412)
stem(n, hn_test, '.'); grid on;
title('产生单位冲击响应');  xlabel('n'); ylabel('h(n)');

%产生阶跃响应
xn_jieyue = impseq(0, 24, 25); %xn长度是100
yn_jieyue = filter(B, A, xn_jieyue);  % A 与 B 描述了差分方程，xn是输入信号。
                                    % filter函数是一维的数字滤波器
                                    % 此时先求由单位冲击函数引起的单位冲激响应
                                    % B是分子系数，A是分母系数
n = 0 : (length(yn_jieyue) - 1);
subplot(413)
stem(n, yn_jieyue, '.'); grid on;
title('单位阶跃响应');  xlabel('n'); ylabel('y(n)');

%产生特定的系统输出
hn_FIR = hn(1 : 15);
xn_FIR = ones(1, 25); % 输入的阶跃信号
                                        %yn_FIR = filter(B, A, xn_FIR);
yn_FIR = conv(hn_FIR, xn_FIR);
n_FIR = 0 : length(yn_FIR) - 1;
subplot(414);
stem(n_FIR, yn_FIR, '.'); grid on;
axis([0, length(yn_FIR), 0, 2])
title('特定的系统的阶跃响应输出');  xlabel('n'); ylabel('y(n)');





