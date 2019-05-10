function f = proj_608_inputOBJ(x)
d = 6371*2*pi/360;
data_3 = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 3,'B1:H22');
result_SH = 0;
result_BJ = 0;
result_SZ = 0;
result_CD = 0;
result_ZZ = 0;
result_HQ = 0;

for i = 1:21
    Distance_SH = distance([data_3(1, 6), data_3(1, 7)], [data_3(i, 2), data_3(i, 3)]) * d;
    a = i + 0;
    result_SH = result_SH + Distance_SH * x(a);
end
result_SH = result_SH + distance([data_3(1, 6), data_3(1, 7)], [x(133), x(134)]) * d * x(22);

for j = 1:21
    Distance_BJ = distance([data_3(2, 6), data_3(2, 7)], [data_3(j, 2), data_3(j, 3)]) * d;
    b = j + 22;
    result_BJ = result_BJ + Distance_BJ * x(b);
end
result_BJ = result_BJ + distance([data_3(2, 6), data_3(2, 7)], [x(133), x(134)]) * d * x(44);

for k = 1:21
    Distance_SZ = distance([data_3(3, 6), data_3(3, 7)], [data_3(k, 2), data_3(k, 3)]) * d;
    c = k + 44;
    result_SZ = result_SZ + Distance_SZ * x(c);
end
result_SZ = result_SZ + distance([data_3(3, 6), data_3(3, 7)], [x(133), x(134)]) * d * x(66);

for l = 1:21
    Distance_CD = distance([data_3(4, 6), data_3(4, 7)], [data_3(l, 2), data_3(l, 3)]) * d;
    d = l + 66;
    result_CD = result_CD + Distance_CD * x(d);
end
result_CD = result_CD + distance([data_3(4, 6), data_3(4, 7)], [x(133), x(134)]) * d * x(88);

for m = 1:21
    Distance_ZZ = distance([data_3(5, 6), data_3(6, 7)], [data_3(m, 2), data_3(m, 3)]) * d;
    e = m + 88;
    result_ZZ = result_ZZ + Distance_ZZ * x(e);
end
result_ZZ = result_ZZ + distance([data_3(5, 6), data_3(5, 7)], [x(133), x(134)]) * d * x(110);

for n = 1:21
    Distance_HQ = distance([data_3(6, 6), data_3(6, 7)], [data_3(n, 2), data_3(n, 3)]) * d;
    f = n + 0;
    result_HQ = result_HQ + Distance_HQ * x(f);
end
result_HQ = result_HQ + distance([data_3(6, 6), data_3(6, 7)], [x(133), x(134)]) * d * x(132);

f = result_SH + result_BJ + result_SZ + result_CD + result_ZZ + result_HQ;