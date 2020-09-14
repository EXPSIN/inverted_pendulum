%{
    ���ܣ����ڵ���ѧģ��
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    Copyright (c) 2020 WuSi All rights reserved.
%}

function  pend = sim_pendulum()

pend.data.L = 1.0;    % ���ڵĳ��ȣ�����ڸ���һ�����ʳ���[meter]
pend.data.m = 1;      % ���ڵ������������������е�����ĩ��[kg]
pend.data.g = 9.8;    % �������ٶ�[m��s^-2]
pend.data.R = 0.1;    % �ڴ��İ뾶[meter]
pend.data.k = 0.1;    % ��Ħ��ϵ����һ������£�Ħ��ϵ����С��1��

pend.x = randn(2,1);          % ϵͳ״̬�� x(1)-�Ƕȣ� x(2)-���ٶ�
pend.u = zeros(1,1);          % �������
pend.exp_x = [pi/5; 0];       % ����״̬��

end

