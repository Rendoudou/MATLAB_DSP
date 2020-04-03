function [  y ] = impseq(x1, x2, N)
%impseq 产生冲击函数
%   x1 输入
%   x2 输入
%   N 冲击序列长度
%   y 输出的冲击序列
    temp = zeros(1, N);
    temp(x1+1 : x2+1) = 1;
    y = temp;
end

