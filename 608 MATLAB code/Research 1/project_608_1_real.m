close all; clear all; clc; format long g;
d = 6371*2*pi/360;
data = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 1 ,'B1:D28');
result_r = 0;
for i = 1 : 27
    Distance = distance([data(i,2), data(i,3)], [data(28, 2), data(28, 3)]) * d;
    result_r = result_r + Distance * data(i, 1);
end