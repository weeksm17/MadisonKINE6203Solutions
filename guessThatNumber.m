function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced   % change || (or) to && (and) so that 1 and 2 and 3 will work as inputs; found by running the code and getting an error   
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner  % add a = to make it "is this true" and not just "this equals this"; found by looking through the script for typing errors                  

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;   % change h to capital H to correctly match the variable; found by looking through the script for typing errors     
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest);     %change to randi(highest) because idk what "floor" is, and "1 * highest" is just the highest number... Randi makes more sense to me and easier syntax; found by running code and 10 being the only right answer for level 1.

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');

while userGuess < 1 || userGuess > highest  %remove the = from ">=" so that the highest number 10, or whatever, can be inputed since it is supposed to be any number 1-10; found by running code and getting an error when I inputed "10" for level 1.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber    %change sign from > to < to correspon with "guess is too low"; found by looking through the script for typing errors
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,(numOfTries-1)); % add in "numOfTries - 1" after secret number so that it actually prints the full sentence, and does not immeditaley go on to the next sentence of game over.
end % add an extra end to end the if statment. Found by looking through the script and notciing no end on the if. And added a minus 1 bcause the try count was one too high.


end  % of guessing while loop;
fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');  %take this out of the while loop so that "game over" is not returned after every guess.; found by running the code and getting game over every time.

end % of game   % insert end to end the function; found this by looking through the scriptand noticing the extra comment. 