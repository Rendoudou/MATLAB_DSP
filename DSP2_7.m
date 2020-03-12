% 武汉理工研究生复试MATLAB练习
% position 例2.7
% data     0310

clc
clear all


%冲击信号
N = 5;  % 长度设置
x1 = 0 : 1 : 4;   % x轴
y1 = zeros(1, N);  % 建立长度为五的0数组
y1(1) = 1;  % 冲击位置设置1
figure(1);
subplot(3, 3, 1);
stem(x1, y1, '.');  % 画序列
grid;  % 打开图中的格子线
 title('冲激信号'); xlabel('time'); ylabel('altitude');

%阶跃信号
 N = 10;
 x2 = 0 : 1 : N-1;
 y2 = ones(1, N);  % 长度为10的1的序列
 y2(1: 3) = 0;
 subplot(3, 3, 2);
 stem(x2, y2, '.');  % 最后的点是在干嘛？
 title('阶跃信号'); xlabel('time'); ylabel('altitude');
 
 %矩形信号
 start_point = -10;
 end_point = 10;
 x3 = start_point :  1 :end_point;
 y31 = (x3 >= -3);
 y32 = (x3 <= 4);
 y3 = y31 & y32;
 subplot(333);
 stem(x3, y3, '.');
 title('矩形波'); xlabel('time'); ylabel('altitude');
 % fprintf('%d',y3);
 
 % 产生三角波
signal_f = 100; %hz
signal_w = signal_f * 2 * pi;
phase_init = 0;
 fs = 5000;  % 采样频率 hz
 t = 0 : 1/fs : 1; % 采样一秒钟，计算出所有的采样时刻
    %
    %原始的模拟信号为sin(2 * pi * signal_f * t + phase_init) 此时的t为一个连续量
    %采样过程中 t变成了一个离散的点；
    %程序中采样频率为5000hz,那么采样周期即为 1/5000s；
    %其中采样时间长度为一秒钟，那么就是要把一秒钟每相隔1/5000s分隔开；
    %sin(w0 * t + phase)->sin(w0 * n * T + phase)->sin(w * n + phase)
    %
 signal_sin_xulie = sin(2 * pi * signal_f * t);  % 正弦函数采样结果
 signal_triangle_xulie = sawtooth(2 * pi * signal_f * t, 0.5);  % 三角波采样结果
 subplot(3, 3, 4)
 plot(t, signal_sin_xulie); grid on;  % 画正弦函数
 axis([0.1, 0.2, -1, 1]); % 限制坐标轴范围
 title('sin wave'); xlabel('time'); ylabel('altitude');
 subplot(3, 3, 5)
 plot(t, signal_triangle_xulie); grid on;  % 画三角波
 axis([0.1, 0.2, -1, 1]); % 限制坐标轴范围
 title('triangle wave'); xlabel('time'); ylabel('altitude');
 
 % 产生方波
 signal_square_fs = 1000; % 采样频率
 signal_square_f  = 50;
 t = 0 : 1 / signal_square_fs : 1;
 signal_square_wave = square(2 * pi * t * signal_square_f, 50);  % 50为占空比
 subplot(3, 3, 6);
 plot(t, signal_square_wave); grid on;
 axis([0 0.1 0 1.2]);
 title('square wave'); xlabel('time'); ylabel('altitude');
 
 % 产生sa函数
 t = -5 : 0.01 : 5;
 signal_sa_wave = sinc(t);
 subplot(3, 3, 7);
 plot(t, signal_sa_wave); grid on;
 axis([-5 5 -0.5 1.5]);
 title('Sa wave'); xlabel('time'); ylabel('altitude');
 
 % 产生锯齿波
signal_f = 100; %hz
signal_w = signal_f * 2 * pi;
 fs = 5000;  % 采样频率 hz
 t = 0 : 1/fs : 1; % 采样一秒钟，计算出所有的采样时刻
 signal_triangle1_xulie = sawtooth(2 * pi * signal_f * t, 1);  % 三角波采样结果
 subplot(3, 3, 8)
 plot(t, signal_triangle1_xulie); grid on;  % 画正弦函数
 axis([0.1, 0.2, -1, 1]); % 限制坐标轴范围
 title('锯齿波'); xlabel('time'); ylabel('altitude');
 
%非周期三角波 单个三角波
t = linspace(-2, 2, 1000);
signal_triangleone_wave = tripuls(t);
figure(2)
subplot(1, 2, 1)
plot(t, signal_triangleone_wave);
axis([-2, 2, 0, 1.2]);

%非周期方波 单个矩形波
t = linspace(-2, 2, 1000);
signal_squareone_wave = rectpuls(t);
subplot(1, 2, 2)
plot(t, signal_squareone_wave);
axis([-2, 2, 0, 1.2]);

% linspace subplot figure rectpuls tripuls sinc sawtooth(t, (0.5 1))
% square(2 * pi * f * t, 占空比)




 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 