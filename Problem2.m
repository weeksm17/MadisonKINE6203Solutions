function [summ,differ,times,maxx] = Problem2(num1,num2)
%Function for the sum, difference, product, and max of 2 input number
%to give the 4 outputs a place as variables in the workspace, type [summ,differ,times,maxx] = Problem2(num1,num2)
% 
summ = (num1 + num2)
differ = (num1 - num2)
times = (num1 * num2)

if num1 >= num2
    maxx = num1
else num2 > num1
    maxx = num2
end
    

end

