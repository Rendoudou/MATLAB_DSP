% �人���о�������MATLAB��ϰ
% position ��6.4.2
% data     0403

clc
clear all
close all

%Global Parameter
B = [1, -2, 30, 14, 5]; %H(Z) ����
A = [1, 5, 4, 4, -2, -1]; %H(Z) ��ĸ

%������λ�����Ӧ
xn = impseq(0, 0, 25); %xn������50
[b0, B1, A1] = dir2cas(B, A);




