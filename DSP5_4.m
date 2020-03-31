% �人���о�������MATLAB��ϰ
% position ��5.4
% data     0331

clc
clear all

%init
xn = 0.2 * (0 : 19);  % 0.2n * R19(n)
hn = 0.8 .^ (0 : 15);  % 0.8(n) * R15(n)
tic;
yn_conv = conv(xn, hn); % �������������
toc;
length_yn = length(xn) + length(hn) - 1; % ���۾���������

L = pow2(nextpow2(length_yn)); % ���ر�����ֵ�����С��2��ָ��ֵ
tic;
xk = fft(xn, L);
hk = fft(hn, L); % ����Բ�ܾ���������Ծ��
yk = xk .* hk; % ����DFT�任������Բ�ܾ��
yn_dft = ifft(yk); % �õ��任�������
toc;

figure(1);
subplot(411);
stem(0 : length(xn) - 1, xn, '.'); grid on; xlabel('n'); ylabel('xn');
subplot(412);
stem(0 : length(hn) - 1, hn, '.'); grid on; xlabel('n'); ylabel('hn');
subplot(413);
stem(0 : (length_yn-1), yn_conv, '.'); grid on; xlabel('n'); ylabel('ynconv');
subplot(414);
stem(0 : (length_yn-1), yn_dft(1 : length_yn), '.'); grid on; xlabel('n'); ylabel('yndft'); 
                                                                                      % matlab���б������ֵ�Ǵ�1��ʼ



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 