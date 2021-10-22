function [total] = Problem4(quar,dime,nick,penn)
%Pocket Change Counter
%   The number of dimes, pennies, quarters, and nickels are inputed. The
%   function then multiplies the number of coin by it's monetary value, in
%   order to add all the coins up and output how much money you have.

total = ((quar*0.25)+(dime*0.10)+(nick*0.05)+(penn*0.01))

end

