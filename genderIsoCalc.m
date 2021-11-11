function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
%% genderIsoCalc takes the gender and days as inputs and outputs the individual means for boys and girls, and the total group means for boys and girls



% First, seperate by gender
% My script for sepearting genders by creating a zeros matrix
% males = zeros(size(NUM,1),1);
% for i = 1:size(NUM,1)
%     if strcmpi(TXT(i,3),'M')
%         males(i) = 1;      
%         
%     end
%     
% end
% 
% females = zeros(size(NUM,1),1);
% for i = 1:size(NUM,1)
%     if strcmpi(TXT(i,3),'F')
%         females(i) = 1;
%              
%     end
%     
% end
 


%% Create a space for the variables/outputs
femaleIsoIndMeans = [ ]
femaleGroupIsoMean = [ ]

%% Pull the Females from the Gender Column. Average the scores from every day for all the Females. Then average those answers to return 1 group average.
% Start a counter to count through the Gender column. 
% Start a for loop to search for all the 1's from a logical array. 
% Create a conditional so that all Females return a 1. Average the days of all the 1's/F's. 
% Update the counter. Then, use those means to find the group mean.

    
c = 1;
for s = 1:length(Gender)
if (Gender(s) == 'F')
    femaleIsoIndMeans(c) = mean([Day1(s), Day2(s), Day3(s)]);
    
    c = c + 1;
end 
end

femaleGroupIsoMean = mean(femaleIsoIndMeans);


%% Create a space for the variables/outputs
maleIsoIndMeans = [ ]
maleGroupIsoMean = [ ]

%% Pull the Males from the Gender Column. Average the scores from every day for all the Males. Then average those answers to return 1 group average.
% Start a counter to count through the Gender column. 
% Start a for loop to search for all the 1's from a logical array. 
% Create a conditional so that all Males return a 1. Average the days of all the 1's/M's. 
% Update the counter. Then, use those means to find the group mean.
for s = 1:length(Gender)
if (Gender(s) == 'M')
    maleIsoIndMeans(c) = mean([Day1(s), Day2(s), Day3(s)])
    
    c = c + 1;   
end
end 

maleGroupIsoMean = mean(maleIsoIndMeans)


end

