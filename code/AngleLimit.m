%% �Ƕȣ��޷�
function in = AngleLimit(in, low, upper)
if(in < low)
    in = in + (upper-low);
elseif(in > upper)
    in = in - (upper-low);
end
end