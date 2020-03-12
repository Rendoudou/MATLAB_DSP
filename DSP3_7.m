% 武汉理工研究生复试MATLAB练习
% position 例3.7
% data     0312

clc
clear all
close all

% H(z) = z / (z-0.3) = 1 / (1 - 0.3 / z);

bk = [1, 0];
ak = [1, -0.3];
omega = -pi : pi / 150 : pi;
[H, w] = freqz(bk, ak, omega); % https://blog.csdn.net/machinelearning_er/article/details/79444352
                                                     % B和A分别对应离散系统的系统函数H(z)的分子、分母多项式的系数向量
Hf=abs(H); %取幅度值实部
Hx=angle(H); %取相位值对应相位角

clf
figure(1)
subplot(211)
plot(w,20*log(Hf)); %幅值变换为分贝单位
title('离散系统幅频特性曲线');
subplot(212)
plot(w,Hx)
title('离散系统相频特性曲线')