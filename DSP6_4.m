% �人���о�������MATLAB��ϰ
% position ��6.4
% data     0331

clc
clear all
close all

%Global Parameter
B = [1, -2, 30, 14, 5]; %H(Z) ����
A = [1, 5, 4, 4, -2, -1]; %H(Z) ��ĸ
A_test = [5, 4, 4, -2, -1];

%������λ�����Ӧ
xn = impseq(0, 0, 25); %xn������50
hn = filter(B, A, xn);  % A �� B �����˲�ַ��̣�xn�������źš�
                                    % filter������һά�������˲���
                                    % ��ʱ�����ɵ�λ�����������ĵ�λ�弤��Ӧ
                                    % B�Ƿ���ϵ�� �������йأ�A�Ƿ�ĸϵ�� ������й�
hn_test = filter(B, A_test, xn);

n = 0 : length(hn) - 1;
figure(1)
subplot(411)
stem(n, hn, '.'); grid on;
title('������λ�����Ӧ');  xlabel('n'); ylabel('h(n)');

subplot(412)
stem(n, hn_test, '.'); grid on;
title('������λ�����Ӧ');  xlabel('n'); ylabel('h(n)');

%������Ծ��Ӧ
xn_jieyue = impseq(0, 24, 25); %xn������100
yn_jieyue = filter(B, A, xn_jieyue);  % A �� B �����˲�ַ��̣�xn�������źš�
                                    % filter������һά�������˲���
                                    % ��ʱ�����ɵ�λ�����������ĵ�λ�弤��Ӧ
                                    % B�Ƿ���ϵ����A�Ƿ�ĸϵ��
n = 0 : (length(yn_jieyue) - 1);
subplot(413)
stem(n, yn_jieyue, '.'); grid on;
title('��λ��Ծ��Ӧ');  xlabel('n'); ylabel('y(n)');

%�����ض���ϵͳ���
hn_FIR = hn(1 : 15);
xn_FIR = ones(1, 25); % ����Ľ�Ծ�ź�
                                        %yn_FIR = filter(B, A, xn_FIR);
yn_FIR = conv(hn_FIR, xn_FIR);
n_FIR = 0 : length(yn_FIR) - 1;
subplot(414);
stem(n_FIR, yn_FIR, '.'); grid on;
axis([0, length(yn_FIR), 0, 2])
title('�ض���ϵͳ�Ľ�Ծ��Ӧ���');  xlabel('n'); ylabel('y(n)');





