% �人���о�������MATLAB��ϰ
% position ��4.6
% data     0319

clc
clear all


%%%�����õ��ź�����%%%

%init
xn = [1 4 3 2];
N = length(xn);
xk = dftmtx(N) * xn';
figure();
stem(xk);

xn_decode = conj(dftmtx(N)) / N * xk;

 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 