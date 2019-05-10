d = 6371*2*pi/360;
data = xlsread('/Users/kunpenghao/Desktop/EE_608/Project/tranportation_data.xlsx', 1 ,'B1:D28');
result = 0;
for i = 1 : 27
    Distance = @(x)distance([data(i,2), data(i,3)], [x(1), x(2)]) * d;
    result = @(x)result + Distance * data(i, 1);
end
f = @(x)result;
x0 = [0,0];
A = [];
b = [];
Aeq = [];
beq = [];
lb = [18, 74];
ub = [54, 135];
x = fmincon(f, x0, A, b, Aeq, beq, lb, ub)