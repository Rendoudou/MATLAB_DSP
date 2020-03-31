function [  y_q ] = CirConv(x1, x2, N)
%CIRCONV Բ�ܾ������
%   x1 ����
%   x2 ����
%   y_qԲ�ܾ�����
    if (N >= length(x1)) && (N >= length(x2))
        disp('Length OK -- CirConv');
        %����һ
        %         x_1=[x1, zeros(1, N-length(x1))];  % �����ӳ�
        %         h_1=[x2, zeros(1, N-length(x2))];  % �����ӳ�
        % 
        %         y1 = conv(x_1, h_1);
        %         z_1 = [zeros(1, N), y1(1 : (N-1))];
        %         z_2 = [y1((N+1):(2*N-1)) zeros(1,N)];
        %         z = z_1(1 : (2*N-1)) + z_2(1 : (2*N-1)) + y1(1 : (2*N-1));
        %         y_q = z(1 : N);
         
        %������
        y2 = conv(x1, x2);
        y_q_1 = y2 (1 : N);
        y_q_2 = y2 (N + 1 : length(y2));
        y_q_2 = [y_q_2, zeros(1, N - length(y_q_2))];
        y_q = y_q_1 + y_q_2;
    else
        disp('Length Wrong -- CirConv');
    end

end

