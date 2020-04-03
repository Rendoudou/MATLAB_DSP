% 武汉理工研究生复试MATLAB练习
% position 例6.4.2
% data     0403

clc
clear all
close all

%Global Parameter
B = [1, -2, 30, 14, 5]; %H(Z) 分子
A = [1, 5, 4, 4, -2, -1]; %H(Z) 分母

%产生单位冲击响应
xn = impseq(0, 0, 25); %xn长度是50
[b0, B1, A1] = dir2cas(B, A);




