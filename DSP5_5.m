% 武汉理工研究生复试MATLAB练习
% position 例5.5
% data     0331

clc
clear all

%init
x1 = [-4, -3, -2, -1, 0, 1, 2, 2];
x2 = [4, 2, -2, -1, 0, 2, 2, -3];

L_real = length(x1) + length(x2) - 1;

L = pow2(nextpow2(L_real));
x1k = fft(x1, L);
x2k = fft(x2, L);
rmk = x1k .* conj(x2k);

rm = real(ifft(rmk));
rm = [rm(length(x1) + 2 : L), rm(1 : length(x1))];
figure()
stem( (-length(x1))+ 1 : (length(x1)) -1, rm, '.', 'fill'); grid on;

 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 