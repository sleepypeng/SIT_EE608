format long g;
data_3 = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 3,'B1:H22');

Aeq = [ones(1, 22), zeros(1, 112);
        zeros(1, 22), ones(1, 22), zeros(1, 90);
        zeros(1, 44), ones(1, 22), zeros(1, 68);
        zeros(1, 66), ones(1, 22), zeros(1, 46);
        zeros(1, 88), ones(1, 22), zeros(1, 24);
        zeros(1, 110), ones(1, 22), zeros(1, 2)];
    
beq = [data_3(1, 5);
            data_3(2, 5);
            data_3(3, 5);
            data_3(4, 5);
            data_3(5, 5);
            data_3(6, 5)];
        
A = zeros(22, 134);
for i = 1:22
    A(i, i : 22 : 5*22+i) = 1;
    b(i, 1) = data_3(i, 1);
end

lb = [zeros(1, 132), 18, 74];
for j = 1:22
    ub(1, j : 22 : 5*22+j) = data_3(j, 1);
end
ub(1, 22) = 1 / 10 * data_3(1, 5);
ub(1, 44) = 1/ 5 * data_3(2, 5);
ub(1, 66) = 2 /5 * data_3(3, 5);
ub(1, 132) = 0;
ub = [ub, 54, 135];

start = [zeros(1, 132), 18, 74];