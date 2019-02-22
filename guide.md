# Bowling Test guide/pseudo-code/breakdown

1. Read sent to me instructions
1.1 Ideas/Excerpts of what I have to do:
... Replicate an american ten-pin bowling game.
... Ultimate task: Display total score for the game.
1.2 Keep in mind:
... If player gets a strike on first try turn it's over and the score for that frame it's 10 + score of the next 2 rolls.
... If player gets a spare or strike in the 10th frame, the player gets to throw once or twice respectively.

2. Search more about Bowling rules/score system

3. How the app should work:
... 3.1 Welcomes player and asks for it's name
... 3.2 Asks player if he/she wants to play or leave
... 3.3 If the player chooses to leave, the app will show a good-bye message and stop
... 3.4 If the player chooses to play, the app continues and asks the player to throw the ball
... 3.5 This throwing process will repeat 10 times
... 3.6 After the tenth throw the app will show a message saying that the game has ended and the total score
... 3.7 App asks player if he/she wants to play again or leave
... 3.8 If player chooses to play again the app repeats steps 3.4 to 3.6
... 3.9 If player chooses to leave, the app repeats step 3.3

4. Tasks/Comments:
... 4.1 App works as expected when:
... Player never gets a strike
... Player gets only 1 strike and is before the 8th frame
... Player doesn't want to play a game and leave
... Player ends a game and wants to play another game
... Player ends a game and wants to leave

... 4.2 App **doesn't** work as expected when:
... Player gets 2+ strikes
... Player gets 1 strike on the 10th frame

... 4.3 General Improvements to make
... TDD
... RGR
... Turn the ruby app into a rails app