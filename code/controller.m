%{
    ���ܣ����������
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    Copyright (c) 2020 WuSi All rights reserved.
%}

function u = controller(x, data)
% �����趨ֵ
exp_x = [pi; 0];
err_x = exp_x - x;
err_x(1) = AngleLimit(err_x(1), -pi, pi);

u_x   = [5; 1].*err_x;

% ���������
u     = (u_x(2) + data.g/data.L*sin(x(1))+data.k/data.m*u_x(1))*data.m*data.L^2;

end