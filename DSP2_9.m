% �人���о�������MATLAB��ϰ
% position ��2.9
% data     0311

%y(n) =  -a1y(n-1) -a2y(n-2)+bx(n)

clc
clear all
close all

%Global Parameter
A = [1, -0.8, 0.64];
B = [0.866];

B = [1, -2, 30, 14, 5];
A = [1, 5, 4, 4, -2, -1];
A_test = [5, 4, 4, -2, -1];

%������λ�����Ӧ
xn = [1, zeros(1, 49)]; %xn������50
hn = filter(B, A, xn);  % A �� B �����˲�ַ��̣�xn�������źš�
                                    % filter������һά�������˲���
                                    % ��ʱ�����ɵ�λ�����������ĵ�λ�弤��Ӧ
                                    % B�Ƿ���ϵ�� �������йأ�A�Ƿ�ĸϵ�� ������й�
hn_test = filter(B, A_test, xn);

n = 0 : length(hn) - 1;
figure(1)
subplot(311)
stem(n, hn, '.'); grid on;
title('������λ�����Ӧ');  xlabel('n'); ylabel('h(n)');

subplot(312)
stem(n, hn_test, '.'); grid on;
title('������λ�����Ӧ');  xlabel('n'); ylabel('h(n)');

%������Ծ��Ӧ
xn_jieyue = ones(1, 100); %xn������100
yn_jieyue = filter(B, A, xn_jieyue);  % A �� B �����˲�ַ��̣�xn�������źš�
                                    % filter������һά�������˲���
                                    % ��ʱ�����ɵ�λ�����������ĵ�λ�弤��Ӧ
                                    % B�Ƿ���ϵ����A�Ƿ�ĸϵ��
n = 0 : length(yn_jieyue) - 1;
subplot(312)
stem(n, yn_jieyue, '.'); grid on;
title('��λ��Ծ��Ӧ');  xlabel('n'); ylabel('y(n)');

%�����ض���ϵͳ���
hn_FIR = hn(1 : 15);
xn_FIR = ones(1, 100); % ����Ľ�Ծ�ź�
                                        %yn_FIR = filter(B, A, xn_FIR);
yn_FIR = conv(hn_FIR, xn_FIR);
n_FIR = 0 : length(yn_FIR) - 1;
subplot(313);
stem(n_FIR, yn_FIR, '.'); grid on;
axis([0, length(yn_FIR), 0, 2])
title('�ض���ϵͳ�Ľ�Ծ��Ӧ���');  xlabel('n'); ylabel('y(n)');





