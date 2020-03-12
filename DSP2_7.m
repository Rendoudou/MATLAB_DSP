% �人���о�������MATLAB��ϰ
% position ��2.7
% data     0310

clc
clear all


%����ź�
N = 5;  % ��������
x1 = 0 : 1 : 4;   % x��
y1 = zeros(1, N);  % ��������Ϊ���0����
y1(1) = 1;  % ���λ������1
figure(1);
subplot(3, 3, 1);
stem(x1, y1, '.');  % ������
grid;  % ��ͼ�еĸ�����
 title('�弤�ź�'); xlabel('time'); ylabel('altitude');

%��Ծ�ź�
 N = 10;
 x2 = 0 : 1 : N-1;
 y2 = ones(1, N);  % ����Ϊ10��1������
 y2(1: 3) = 0;
 subplot(3, 3, 2);
 stem(x2, y2, '.');  % ���ĵ����ڸ��
 title('��Ծ�ź�'); xlabel('time'); ylabel('altitude');
 
 %�����ź�
 start_point = -10;
 end_point = 10;
 x3 = start_point :  1 :end_point;
 y31 = (x3 >= -3);
 y32 = (x3 <= 4);
 y3 = y31 & y32;
 subplot(333);
 stem(x3, y3, '.');
 title('���β�'); xlabel('time'); ylabel('altitude');
 % fprintf('%d',y3);
 
 % �������ǲ�
signal_f = 100; %hz
signal_w = signal_f * 2 * pi;
phase_init = 0;
 fs = 5000;  % ����Ƶ�� hz
 t = 0 : 1/fs : 1; % ����һ���ӣ���������еĲ���ʱ��
    %
    %ԭʼ��ģ���ź�Ϊsin(2 * pi * signal_f * t + phase_init) ��ʱ��tΪһ��������
    %���������� t�����һ����ɢ�ĵ㣻
    %�����в���Ƶ��Ϊ5000hz,��ô�������ڼ�Ϊ 1/5000s��
    %���в���ʱ�䳤��Ϊһ���ӣ���ô����Ҫ��һ����ÿ���1/5000s�ָ�����
    %sin(w0 * t + phase)->sin(w0 * n * T + phase)->sin(w * n + phase)
    %
 signal_sin_xulie = sin(2 * pi * signal_f * t);  % ���Һ����������
 signal_triangle_xulie = sawtooth(2 * pi * signal_f * t, 0.5);  % ���ǲ��������
 subplot(3, 3, 4)
 plot(t, signal_sin_xulie); grid on;  % �����Һ���
 axis([0.1, 0.2, -1, 1]); % ���������᷶Χ
 title('sin wave'); xlabel('time'); ylabel('altitude');
 subplot(3, 3, 5)
 plot(t, signal_triangle_xulie); grid on;  % �����ǲ�
 axis([0.1, 0.2, -1, 1]); % ���������᷶Χ
 title('triangle wave'); xlabel('time'); ylabel('altitude');
 
 % ��������
 signal_square_fs = 1000; % ����Ƶ��
 signal_square_f  = 50;
 t = 0 : 1 / signal_square_fs : 1;
 signal_square_wave = square(2 * pi * t * signal_square_f, 50);  % 50Ϊռ�ձ�
 subplot(3, 3, 6);
 plot(t, signal_square_wave); grid on;
 axis([0 0.1 0 1.2]);
 title('square wave'); xlabel('time'); ylabel('altitude');
 
 % ����sa����
 t = -5 : 0.01 : 5;
 signal_sa_wave = sinc(t);
 subplot(3, 3, 7);
 plot(t, signal_sa_wave); grid on;
 axis([-5 5 -0.5 1.5]);
 title('Sa wave'); xlabel('time'); ylabel('altitude');
 
 % ������ݲ�
signal_f = 100; %hz
signal_w = signal_f * 2 * pi;
 fs = 5000;  % ����Ƶ�� hz
 t = 0 : 1/fs : 1; % ����һ���ӣ���������еĲ���ʱ��
 signal_triangle1_xulie = sawtooth(2 * pi * signal_f * t, 1);  % ���ǲ��������
 subplot(3, 3, 8)
 plot(t, signal_triangle1_xulie); grid on;  % �����Һ���
 axis([0.1, 0.2, -1, 1]); % ���������᷶Χ
 title('��ݲ�'); xlabel('time'); ylabel('altitude');
 
%���������ǲ� �������ǲ�
t = linspace(-2, 2, 1000);
signal_triangleone_wave = tripuls(t);
figure(2)
subplot(1, 2, 1)
plot(t, signal_triangleone_wave);
axis([-2, 2, 0, 1.2]);

%�����ڷ��� �������β�
t = linspace(-2, 2, 1000);
signal_squareone_wave = rectpuls(t);
subplot(1, 2, 2)
plot(t, signal_squareone_wave);
axis([-2, 2, 0, 1.2]);

% linspace subplot figure rectpuls tripuls sinc sawtooth(t, (0.5 1))
% square(2 * pi * f * t, ռ�ձ�)




 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 