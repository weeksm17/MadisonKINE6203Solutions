%% Madison Weeks
%% 10/7/2021
%% This code is for a game of Tic Tac Toe with one player and the computer.
%
%
% %% create a board game for Tic Tac Toe when I get mlore advanced
% figure
% plot([1 4],[-2 -2], 'k','linewidth',2);
% hold on
% plot([1 4],[-3 -3], 'k','linewidth',2)
% plot([2 2],[-1 -4], 'k','linewidth',2)
% plot([3 3],[-1 -4], 'k','linewidth',2)
% hold off
% axis off
% 
% 
% gameboard = [ 1 4 7; 2 5 8; 3 6 9]
% Gameboard(6) = 
% 
% gameboard = [ 1 2 3; 4 5 6; 7 8 9]
% disp('To place your X''s and O''s, type "X=3" or "X=4" etc., to place your X or O in the place of the number you want to play on')  
% 
% 
% for i = 1:9
%     moves
% end
%
% disp 'Please enter your row, then column '
% disp 'when prompted, enter an integer between 1-3'
%
%
%
%% Begin the game
% Ask the player if they want to play. If yes, the board will pop up. If
% no, game over.
%
promptMessage = sprintf('Hello! Would you like to play tic tac toe?');
titleBarCaption = 'Yes or No';
button = questdlg(promptMessage, titleBarCaption, 'Yes', 'No', 'yes');

promptMessage2 = sprintf('Would you like to make the first move?');
titleBarCaption = 'Yes or No';
whoStart = questdlg(promptMessage2, titleBarCaption, 'Yes', 'No', 'yes');
if strcmpi(whoStart, 'Yes')
    player = 1;
   
elseif strcmpi(whoStart, 'No')    
    player = 0;
   
end
   

%% Design game board
if strcmpi(button, 'Yes')

    figure
    plot([.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
    axis off
    hold on
    plot([.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
    plot([1.5 1.5],[-.5 -3.5], 'k','linewidth',2)
    plot([2.5 2.5],[-.5 -3.5], 'k','linewidth',2)
    hold off
    
% figure
% plot([1 4],[-2 -2], 'k','linewidth',2);
% hold on
% plot([1 4],[-3 -3], 'k','linewidth',2)
% plot([2 2],[-1 -4], 'k','linewidth',2)
% plot([3 3],[-1 -4], 'k','linewidth',2)
% hold off
% axis off

end
 
 
%% Create game board in the code world
% In the background, this creates an array of zeros that change as moves
% are made. This is the board behin the scenes.
gboard = zeros(3,3);

%% Set loop for moves, until a winner is found
clear gameOver
nmoves = 0;

while ~exist('gameOver', 'var')
   
%% Player move


prompt = {'Enter your choice of ROW:','Enter your choice of COLUMN:'};
dlgtitle = 'Choose numbers 1-3:';
dims = [1 75];
player_move = inputdlg(prompt, dlgtitle, dims);
playerRow = str2double(player_move{1});
playerRow1 = -1 * playerRow;
playerCol = str2double(player_move{2});

if gboard(playerRow,playerCol) == 1 || gboard(playerRow,playerCol) == -1
    msgbox('Hey dummy. You are trying to make the same move twice. Try again.')
    player_move = inputdlg(prompt, dlgtitle, dims);
    playerRow = str2double(player_move{1});
    playerRow1 = -1 * playerRow;
    playerCol = str2double(player_move{2});

end

text(playerCol,playerRow1,'X','horizontalalignment','center','fontsize',80)
gboard(playerRow,playerCol) = 1;

% Check to see if the player won:
if  sum(diag(gboard)) == 3 ...
    || sum(diag(flipud(gboard))) == 3 ...
    || sum(gboard(1,1:3)) == 3 ...
    || sum(gboard(2,1:3)) == 3 ...
    || sum(gboard(3,1:3)) == 3 ...
    || sum(gboard(1:3,1)) == 3 ...
    || sum(gboard(1:3,2)) == 3 ...
    || sum(gboard(1:3,3)) == 3
    disp('Player Wins')
    msgbox('Congrats! You beat a stupid computer.')
    gameOver = 1;
    break
   
end

nmoves = nmoves +  1;

%% Computer move, checking for overwrites
pause(2)

clear doAgain
while ~exist('doAgain','var')
    compRow = randi(3,1);
    compRow1 = -1 * compRow;
    compCol = randi(3,1);
   
    if gboard(compRow,compCol) ~= 1 && gboard(compRow,compCol) ~= -1
        text(compCol,compRow1,'O','horizontalalignment','center','fontsize',80)
        gboard(compRow,compCol) = -1;
        doAgain = 0;

    end

end

nmoves = nmoves + 1;

% Check for computer win:
if sum(diag(gboard)) == -3 ...
    || sum(diag(flipud(gboard))) == -3 ...
    || sum(gboard(1,1:3)) == -3 ...
    || sum(gboard(2,1:3)) == -3 ...
    || sum(gboard(3,1:3)) == -3 ...
    || sum(gboard(1:3,1)) == -3 ...
    || sum(gboard(1:3,2)) == -3 ...
    || sum(gboard(1:3,3)) == -3
    disp('Computer Wins')
    msgbox('Wow. You suck.')
    gameOver = 1;
    break
   
end

%% Check for draw
% Draw occurs if all 9 boxes are filled
if nmoves > 8
    disp('It is a draw')
    msgbox('It''s a tie. Bye bye!')
    gameOver = 1;
    break

end
   
end
