%{
    ���ܣ����ڵ���ѧģ�ͣ��ο� Khalil, Hassan K., and Jessy W. Grizzle. Nonlinear systems. Vol. 3. Upper Saddle River, NJ: Prentice hall, 2002.
    ���ߣ�С˼ͬѧ��EXPSIN��
    ���ڣ�2020��09��13��
    Copyright (c) 2020 WuSi All rights reserved.
%}

function dx = pendulum(x, u, data)
%{
    x �� R^{2 �� 1}
    x(1) �Ƕ�
    x(2) ���ٶ�

    u �� R^{1 �� 1}
    u ���ڵ�����
%}

dx = [
  x(2);
  -data.g/data.L*sin(x(1)) - data.k/data.m*x(2) + 1/data.m/(data.L)^2*u;
];


end