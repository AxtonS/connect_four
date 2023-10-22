# connect_four  
  
The purpose of this project is to learn test driven development  
I had originally begun working on this project and took a very long break and decided to come back and relearn  
the fundamentals of TDD and rewrite this project with a fresh mindset starting from scratch as I felt the  
original tests were not working whatsoever. I also disliked the original structure as it seemedlike a mess.  
The original project can be found in the branch "original" in it's near finished state.  
  
To begin this project I intend to break down the individual pieces using a computational thinking process I've  
learned in college from an applied problem solving class: Decomposition, Pattern Recognition and Data  
Representation, Abstraction, then writing pseudo code or a flowchart to settle on the game logic.  
I intend to strictly follow the red-green-refactor style of TDD to complete this project.  
  
## Decomposition  
  
-2 dimensional array to store board state  
-method to place pieces will check for lowest free space in given column  
-method to check draw or win condition, checks vertical, horizontal, and then diagonal  
-variable to store winner or draw  
-variables for player names, and color  
-method to switch turns  
-script to display board and prompt player input between turns  
-interface to allow entry of player names  
-interface to select column or quit game between turns  
-script to start, run, and end game  
-starting player is determined randomly  
  
## Pattern Recognition and Data Representation  
  
-board will be stored in a 2 dimensional array that holds either empty strings or a unicode symbol cooresponding  
to the player  
  
## Abstraction  
  
-the win condition check can just check that there are 4 of the same symbol in a row  
-the place method can be split into a valid_position method and then simply place the given symbol in that  
position  
-switch turn will manipulate a current_player variable so as to let interface methods work for both players  

## Algorithm
  
-Start game  
-First player enters name and chooses either yellow or red piece  
-Second player enters name and chooses either yellow or red pice  
-Current player is chosen randomly  
-Loop while win condition is false:  
    -prompt current player to select a column or quit game  
    -check win condition  
    -switch current player  
-Display draw or winner message  
-Prompt to restart game or quit  
