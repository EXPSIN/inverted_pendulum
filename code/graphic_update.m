%{
    ���ܣ�ͼ�ν������
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    Copyright (c) 2020 WuSi All rights reserved.
%}
function graphic_update(SG, pend, t)
% ���ڵĽǶ�
theta = pend.x(1);

% ĩ������
x =  pend.data.L * sin(theta);
y = -pend.data.L * cos(theta);

% ���°ڵ�ͼ��
SG.pend1.XData = [0; x];
SG.pend1.YData = [0; y];
SG.pend2.XData = x + SG.cir(1, :);
SG.pend2.YData = y + SG.cir(2, :);

% ����ʱ��ͼ��
SG.time.String = sprintf('%3.2f s', t);


addpoints(SG.theta_ref, t, pend.exp_x(1));  % ���� �Ƕ��趨ֵ
addpoints(SG.omega_ref, t, pend.exp_x(2));  % ���� ���ٶ��趨ֵ
addpoints(SG.theta, t, pend.x(1));          % ���� �Ƕ�
addpoints(SG.omega, t, pend.x(2));          % ���� ���ٶ�
addpoints(SG.T, t, pend.u);                 % ���� ����

% drawnow
drawnow limitrate;
end