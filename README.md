# connect_four  

The purpose of this project is to learn test driven development  

## Structure  
This is my initial idea for how to structure this game, the final product will likely be different.  

Board class:  
-has board size  
-board will be stored in a hash table a-f and 1-7 holding 0-3 as state values  
-initializes board  
-displays state  
-places pieces  
-checks win condition  

Player class:  
-has player names and piece color  
-makes moves  

Game class:  
-has current player, and game state  
-starts the game  
-switches players  
-checks for win or draw  
-provides interface  
-handles user input  
-displays the board  
-handles player moves  
