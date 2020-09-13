%{
    ���ܣ�rungekutta ���
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    Copyright (c) 2020 WuSi All rights reserved.
%}

function x = rungekutta(fun, x0, u, h, data)
%{
    fun - ���ض����΢�ַ���ģ��
    x0 - ���ض���ĳ�ʼ״̬
    u  - ���ض��������
    h  - ���沽��
    data - ���ض���������ļ�
%}

% FcnHandlesUsed  = isa(fun,'function_handle');
k1 = fun(x0       , u, data); % ������ - б��
k2 = fun(x0+h/2*k1, u, data); % ������+1/2���� - ��б��
k3 = fun(x0+h/2*k2, u, data); % ������+1/2���� - ��б��
k4 = fun(x0+  h*k3, u, data); % ��һ��������б��
x = x0 + h/6*(k1 + 2*k2 + 2*k3 + k4);
end