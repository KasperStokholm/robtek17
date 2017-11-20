
PROGRAM _INIT
	input := 'MDUMMMMMDUMMMMMDUMDUMDUMDUMDUMMMMM'
	//M = Move
	//D = Down
	//U = Up
	//N = New line
END_PROGRAM

PROGRAM _CYCLIC
	
	timer.IN := TRUE;
	timer.PT := T#1000ms
	
	IF timer.Q THEN
		i := i + 1;
		
		
		IF i < LEN(input) THEN
			//Change commandText to show the current function
			commandText := MID(input, 1, i);
		
			IF MID(input, 1, i) = 'M' THEN
				test := 1;
				//Code to move
			ELSIF(MID(input, 1, i) = 'D' THEN
				test := 2;
				//Code to make the robot move down
			ELSIF(MID(input, 1, i) = 'U' THEN
				test := 3;
				//Code to make the robot move up
			ELSIF(MID(input, 1, i) = 'N' THEN
				test := 4;
				//Code to make the robot go to the next line
				
			END_IF
		END_IF
		
	//Calling timer function block			
	timer();
	
		
	 
END_PROGRAM

PROGRAM _EXIT
	
	 
END_PROGRAM

