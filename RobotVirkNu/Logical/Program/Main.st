
PROGRAM _INIT
	input := 'MDUMMMMMDUMMMMMDUMDUMDUMDUMDUMMMMMMMMMMMMMMDUMDUMDUMDUMDUMDUMDUMDUMDUMDUMDUMDUMMMMMMMMM';
	x_step := FALSE;
	y_step := FALSE;
	z_step := FALSE;
	x_dir := FALSE;
	y_dir := FALSE;
	z_dir := FALSE;
	x_en := TRUE;
	y_en := TRUE;
	z_en := TRUE;
	
	//	M = MOVE
	//	D = Down
	//	U = Up
	//	N = New line
	//	S = Sharpener
	 
END_PROGRAM


PROGRAM _CYCLIC
	timer.IN := TRUE;
	timer.PT := T#500ms;
	step_timer.IN := FALSE;
	step_timer.PT := T#100ms;
	
	IF timer.Q THEN
		
		IF i < LEN(input) THEN
			//Change commandText to show the current function
			commandText := MID(input, 1, i);
			i := i + 1;
		
			WHILE commandText = 'M' AND timer.Q DO
				x_dir := TRUE;
				y_step := FALSE;
				z_step := FALSE;
				
				IF x_step = FALSE THEN
					x_step := TRUE;
				ELSE
					x_step := FALSE;
				END_IF
				
				
//				IF stepCount < 100 THEN
//					IF x_step = FALSE THEN
//						x_step := TRUE;
//					ELSE
//						x_step := FALSE;
//						stepCount := stepCount + 1;
//						END_IF
//					
//					
//				END_IF
				
				
				
					
					
//				//Code to move
//			ELSIF(MID(input, 1, i) = 'D') THEN
//				test := 2;
//				//Code to make the robot move down
//			ELSIF(MID(input, 1, i) = 'U') THEN
//				test := 3;
//				//Code to make the robot move up
//			ELSIF(MID(input, 1, i) = 'N') THEN
//				test := 4;
//				//Code to make the robot go to the next line
//			ELSIF(MID(input, 1, i) = 'S') THEN
//				test := 5;
//				//Code to make the robot go to the sharpener
				//				
			END_WHILE
			END_IF
		timer.IN := FALSE;
	END_IF
	
	//Calling timer function block			
	timer();
	 
END_PROGRAM

PROGRAM _EXIT
	
	 
END_PROGRAM

