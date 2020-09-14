%{
    ���ܣ����ڷ���
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    ˵�����������д��MATLAB R2017b��δ��������汾��matlab���в���
    Copyright (c) 2020 WuSi All rights reserved.
%}

close all; clear; clc;
addpath('./code');              % ��Ӵ���·��

cfg  = sim_config();            % ��������
pend = sim_pendulum();          % ���ض��󣨰ڵ����ã�
SG   = sim_graphic(pend);     	% ͼ�λ�����
 
for i = 1:cfg.N
    t = cfg.t(i);

    % ������
    pend.u = controller(pend.x, pend.data);
    
    % ���ض���
    pend.x = rungekutta(@pendulum, pend.x, pend.u, cfg.T, pend.data);
    
    % ͼ�񻯽���
    graphic_update(SG, pend, t );
end


