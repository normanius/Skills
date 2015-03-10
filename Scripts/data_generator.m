% Match-up and result generator.

% 0) Rules and tournament setup
%       - Number of players in the tournament: nPlayers
%       - The tournament consists of battles between multiple teams
%       - Teams are formed per battle
%       - Teams have random sizes in the range of teamSizeRange 
%       - A random number of teams in teamCountRange per battle
%       - The team's result is the average of every player in the team
%       - Every player generates a random result defined by a normal
%         distribution (individual means and individual variances). The
%         player results are defined by playerResultRange.
%       - For every ranking poins are distributed: nTeams-rank+1 points
%       - 
%    Improvements for later:
%       - Support partial plays (some players exit a battle before it ends,
%         and others enter a battle after it has started)
%       - Design a more complex skill and reward system
%       - "Negative" points / punishment
%       - Use more sophisticated distributions to model the skills
%       - Draws
%       - Learning / Skill improvement
% 1) Define a user base. Every user/player has the following properties:
%       - playing frequency
%       - mean and 
% 2) Form teams
% 3) Play battles
% 4) Update ranking
% 5) Update time stride, restart with 2)


%% 0) Tournament setup
nPlayers = 1000;
teamSizeRange = [4, 6];
teamCountRange = [4, 6];
playerResultRange = [0, 1000];
playerVarianceRange = [10, 100];
playerAvailabilityRange = [0.01, 1];    % Battles per time unit
playerInitialScore = 0;

timeMax = 100;

% Set up random number generator.
rng(0,'twister');

%% 1) Set up user base
playerMeans = uniformDistribution(nPlayers, playerResultRange);
playerVariances = uniformDistribution(nPlayers, playerVarianceRange);
playerScores = ones(nPlayers, 1)*playerInitialScore;
playerAvailabilities = uniformDistribution(nPlayers, playerAvailabilityRange);

%% 2)
for t=1:timeMax
   battlesInTimeUnit = uniformDistribution(1, battlesPerTimeUnit);
   playersAvailable = rand(nPlayers, 1)<playerAvailabilities;
   
   % Form groups until there are no players left.
   
   % For every group simulate the game outcome.
   
   % Create team ranking per battle
   % Update individual scores 
   % Update individual skills
   
   % Dump the battles
end
