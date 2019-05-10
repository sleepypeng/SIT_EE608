function [c, ceq] = proj_608_input_nonlin(x)
d = 6371*2*pi/360;
data_3 = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 3,'B1:H22');
con_SH = distance([data_3(1, 6), data_3(1, 7)], [x(133), x(134)]) * d;
con_BJ = distance([data_3(2, 6), data_3(2, 7)], [x(133), x(134)]) * d;
con_SZ = distance([data_3(3, 6), data_3(3, 7)], [x(133), x(134)]) * d;
con_CD = distance([data_3(4, 6), data_3(4, 7)], [x(133), x(134)]) * d;
con_ZZ = distance([data_3(5, 6), data_3(5, 7)], [x(133), x(134)]) * d;
con_HQ = distance([data_3(6, 6), data_3(6, 7)], [x(133), x(134)]) * d;
c = [150 - con_SH;
       150 - con_BJ;
       150 - con_SZ;
       150 - con_CD;
       150 - con_ZZ;
       150 - con_HQ];
ceq = [];