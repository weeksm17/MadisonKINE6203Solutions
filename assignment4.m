%% Import File Function
% run this first function to import the data
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');


%% GenderIsoCalc Function
% takes the gender and days as inputs and outputs the individual means for
% boys and girls, and the total group means for boys and girls
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)


%% DayComparer Function
% Takes the subject ID and two days to determine if there was an improvment
% in scroes from day A to day B. Run this function twice to look at Day 1
% to Day2 and Day 2 to Day 3. 
[day1toDay2] =  dayComparer(SubjectID, Day1, Day2)
[day2toDay3] =  dayComparer(SubjectID, Day2, Day3)

%% Weight normalizing equations. 
% Equations that normalize the average scores to the averaged weights for
% each day
normDay1mean = [mean(Day1) / mean(Weight)]
normDay2mean = [mean(Day2) / mean(Weight)]
normDay3mean = [mean(Day3) / mean(Weight)]


%% For formatting the output: ragged array, pad w NaNs   ??? can my results not come out like usual?

