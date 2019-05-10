function f = proj_608_outputOBJ(x)
d = 6371*2*pi/360;
data_2 = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 2,'B1:H24');
result_SH = 0;
result_BJ = 0;
result_CD = 0;
result_SF = 0;
for i = 1:24
    Distance_SH = distance([data_2(1, 6), data_2(1, 7)], [data_2(i, 2), data_2(i, 3)]) * d;
    a = i + 0;
    result_SH = result_SH + Distance_SH * x(a);
end
for j = 1:24
    Distance_BJ = distance([data_2(2, 6), data_2(2, 7)], [data_2(j, 2), data_2(j, 3)]) * d;
    b = j + 24;
    result_BJ = result_BJ + Distance_BJ * x(b);
end
for m = 1:24
    Distance_CD = distance([data_2(3, 6), data_2(3, 7)], [data_2(m, 2), data_2(m, 3)]) * d;
    c = m + 48;
    result_CD = result_CD + Distance_CD * x(c);
end
for n = 1:24
    Distance_SF = distance([x(97), x(98)], [data_2(n, 2), data_2(n, 3)]) * d;
    d = n + 72;
    result_SF = result_SF + Distance_SF * x(d);
end
f = result_SH + result_BJ + result_CD + result_SF;