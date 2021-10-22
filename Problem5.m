function [triangleOrNot] = Problem5(triArray)
%Problem5 test for triangle sides
%   Tests the inputs in the form of an array to see if they can be triangle sides
%%   Type input as an array like so [1 2 3] or [5 6 8] or [3 10 20]

if triArray(1,3) > triArray(1,2) + triArray(1,1)
triangleOrNot = false

else triArray(1,3) < triArray(1,2) + triArray(1,1)
    triangleOrNot = true
end

end

