%{
    ���ܣ����滷��������
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    Copyright (c) 2020 WuSi All rights reserved.
%}

function SC = sim_config()

% ���沽�� [sec]
SC.T = 1e-3;

% ����ʱ�� [sec]
SC.time = 15;
SC.t = 0:SC.T:SC.time;

% ���沽�� 
SC.N = length(SC.t);

end