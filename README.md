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
-method to check win condition, checks vertical, horizontal, and then diagonal  
-variables for player names, and color  
-method to switch turns  
-script to display board and prompt player input between turns  
-interface to allow entry of player names  
-interface to select column or quit game between turns  
-script to start, run, and end game  
