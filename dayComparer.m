function [improvement] =  dayComparer(SubjectID,dayA,dayB)
%% dayComparer Takes the subject ID and two days to determine if there was an improvment in scroes from day A to day B. 
% Run this function twice to look at Day 1 to Day 2 and Day 2 to Day 3.

 %% day1toDay2 and day2toDay3
 % take all of SubjectID and count through it to see if dayA is lower than
 % dayB. If true, return improvement(i) = the SubjectID of who did improve.


% if (day3 > day2)
%         day2toDay3 = largeNumber-smallNumber;
%  else 
%        
%     end

 for i = 1:length(SubjectID)
 if (dayB(i) > dayA(i))
        improvement(i) = SubjectID(i);
 %else improvement = 1
       
 end
 
 end
    
 %% The simplest way
% improvement = SubjectID(dayB > dayA);
 
%%  Other idea that Dr.Mizelle says is actually easier 
% diff_days = dayB - dayA;
%  
%  increased = [];
%  decreased = [];
%  increased = SubjectID(find(diff_days > 0));
%  decreased = SubjectID(find(diff_days <= 0));
%  
% 
% 
% % if (day3 > day2)
% %         day2toDay3 = largeNumber-smallNumber;
% %  else 
% %        
% %     end
% % 
% % end
% 
% 
% %%
% %%
% %%
% %%
% %% 

% for i = 1:size(NUM,1)
%     if strcmpi(TXT(i,1), SubjectID)
%         row = i;
%              
%     end
%     
% end
% 
% %% pulls the columns that contain day 1, 2 , and 3
% % day1 = NUM(:,4);
% % day2 = NUM(:,5);
% % day3 = NUM(:,6);
% 
% 
% 
% vals = [NUM(:,4),NUM(:,5),NUM(:,6)]
% if (day2 >= day1)
%         day1toDay2 = SubjectID;
%  else 
%        
%     end

