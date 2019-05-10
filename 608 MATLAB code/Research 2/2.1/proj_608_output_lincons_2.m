format long g;
data_2 = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 2,'B1:H24');

A = [ones(1, 24), zeros(1, 74);
        zeros(1, 24), ones(1, 24), zeros(1,50);
        zeros(1, 48), ones(1, 24), zeros(1,26);
        zeros(1, 72), ones(1, 24), 0, 0];

b = [data_2(1, 5);
        data_2(2, 5);
        data_2(3, 5);
        data_2(4, 5)];

Aeq = zeros(24, 98)
for i = 1:24
    Aeq(i, i:24:3*24+i) = 1; 
    beq(i, 1) = data_2(i, 1);
end

lb = [zeros(1,96), 18, 74];
ub = [Inf(1, 72), 1/10 * data_2(1, 1), 1/10 * data_2(2, 1), Inf(1, 22), 54, 135];
start = [zeros(1,96), 18, 74];