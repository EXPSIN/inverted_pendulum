%{
    ���ܣ�ͼ�νӿ�
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    Copyright (c) 2020 WuSi All rights reserved.
%}

function SG = sim_graphic(pend)
% ���ڵĽǶ�
theta = pend.x(1);

% ĩ������
x =  pend.data.L * sin(theta);
y = -pend.data.L * cos(theta);
% �ڴ�
SG.cir   = pend.data.R*[cos(linspace(0, 2*pi, 10)); sin(linspace(0, 2*pi, 10))];

figure(1);
set(gcf, 'color', 'w', 'position', [10, 10, 1200, 500]);
subplot(1, 2, 1);
hold on; axis equal; grid on;
axis(1.2*[-pend.data.L, pend.data.L, -pend.data.L, pend.data.L])
SG.pend1 = line([0; x], [0; y], 'color', 'blue', 'linestyle', '-', 'linewidth', 5);             % �ڸ�
SG.pend2 = patch(x + SG.cir(1, :), y + SG.cir(2, :), 'red', 'linestyle', '-', 'linewidth', 2);  % �ڴ�
SG.time  = text(pend.data.L, pend.data.L, sprintf('%3.2f s', 0));



subplot(1, 2, 2);
hold on; grid on;

% ʱ��vs״̬��
SG.theta_ref = animatedline('color', 'b', 'linestyle', '--', 'handlevisibility', 'off');
SG.omega_ref = animatedline('color', 'r', 'linestyle', '--', 'handlevisibility', 'off');
SG.theta = animatedline('color', 'b', 'linestyle', '-', 'linewidth', 1);    % �Ƕ�
SG.omega = animatedline('color', 'r', 'linestyle', '-', 'linewidth', 1);    % ���ٶ�
SG.T     = animatedline('color', 'k', 'linestyle', '-', 'linewidth', 1);    % ����
legend('\theta', '\omega', 'torque');



end