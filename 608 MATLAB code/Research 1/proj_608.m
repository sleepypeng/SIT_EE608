function f = proj_608(x)
d = 6371*2*pi/360;
data_1 = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 1 ,'B1:D28');
result = 0;
for i = 1 : 27
    Distance = distance([data_1(i,2), data_1(i,3)], [x(1), x(2)]) * d;
    result = result + Distance * data_1(i, 1);
end
f = result