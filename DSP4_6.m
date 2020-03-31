% 武汉理工研究生复试MATLAB练习
% position 例4.6
% data     0319

clc
clear all


%%%采样得到信号序列%%%

%init
xn = [1 4 3 2];
N = length(xn);
xk = dftmtx(N) * xn';
figure();
stem(xk);

xn_decode = conj(dftmtx(N)) / N * xk;

 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 