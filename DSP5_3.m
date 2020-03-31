% �人���о�������MATLAB��ϰ
% position ��5.4
% data     0325

clc
clear all

%init
xn = 0.2 * (0 : 19);  % 0.2n * R19(n)
hn = 0.8 .^ (0 : 15);  % 0.8(n) * R15(n)

yn_conv = conv(xn, hn); % �������������
length_yn = length(xn) + length(hn) - 1; % ���۾���������

L = pow2(nextpow2(length_yn)); % ���ر�����ֵ�����С��2��ָ��ֵ
xk = fft(xn, L);
hk = fft(hn, L); % ����Բ�ܾ���������Ծ��
yk = xk .* hk; % ����DFT�任������Բ�ܾ��
yn_dft = ifft(yk); % �õ��任�������

figure(1);
subplot(211);
stem(0 : (length_yn-1), yn_conv, '.'); grid on;
subplot(212);
stem(0 : (length_yn-1), yn_dft(1 : length_yn), '.'); grid on; % matlab���б������ֵ�Ǵ�1��ʼ



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 