function [  y ] = impseq(x1, x2, N)
%impseq �����������
%   x1 ����
%   x2 ����
%   N ������г���
%   y ����ĳ������
    temp = zeros(1, N);
    temp(x1+1 : x2+1) = 1;
    y = temp;
end

