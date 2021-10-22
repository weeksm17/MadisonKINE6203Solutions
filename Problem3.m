function [ans] = Problem3(num1,num2)
%WOO or HAH
%  2 numbers are inputed and then added together. If their sum is even, "Woo" is the output. If
%  there sum is odd, the output is "Hah".
 
summ = num1 + num2

if rem(summ,2) == 0
    ans = 'Woo'
    
else 
    ans = 'Hah'
end

end

