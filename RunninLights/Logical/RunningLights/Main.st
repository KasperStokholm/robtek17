
PROGRAM _INIT
	input := 'N1N2N3N4N5N6N7N8N7N6N5N4N3N2N1FN1N2KKKKKKN3N4N5N6N7N8Q';
	//N + tal = tænd lys #
	//K = behold gammel værdi
	//F = OFF
	//Q = Quit
END_PROGRAM

PROGRAM _CYCLIC
	 
	timer.IN := TRUE;
	timer.PT := T#1000ms;
	
	IF timer.Q THEN
		i := i + 1;
		tempText := USINT_TO_STRING(i);
		visualTextCounter := 'i = 000';
		visualTextCounter := REPLACE(visualTextCounter, tempText, LEN(tempText), LEN(visualTextCounter)-LEN(tempText)+1);
		
		IF i < LEN(input) THEN
			
			commandText := MID(input, 1, i);
			
			IF MID(input, 1, i) = 'N' THEN
				i := i + 1;
				visualLight0 := 0;
				visualLight1 := 0;
				visualLight2 := 0;
				visualLight3 := 0;
				visualLight4 := 0;
				visualLight5 := 0;
				visualLight6 := 0;
				visualLight7 := 0;
				
				CASE STRING_TO_USINT(MID(input, 1, i)) OF
					1 :
						visualLight0 := 1;
					2 :
						visualLight1 := 1;
					3 :
						visualLight2 := 1;
					4 :
						visualLight3 := 1;
					5 :
						visualLight4 := 1;
					6 :
						visualLight5 := 1;
					7 :
						visualLight6 := 1;
					8 :
						visualLight7 := 1;b
					
				END_CASE
			
			ELSIF(MID(input, i, l ) = 'K') THEN
				//Keep old values
			ELSIF(MID(input, i, 1 ) = 'Q') THEN
				//Quit
				i := 0;
			ELSIF(MID(input, i, 1 ) = 'F') THEN
				visualLight0 := 0;
				visualLight1 := 0;
				visualLight2 := 0;
				visualLight3 := 0;
				visualLight4 := 0;
				visualLight5 := 0;
				visualLight6 := 0;
				visualLight7 := 0;
			END_IF
			
		END_IF
		
		timer.IN := FALSE;
		
	END_IF
	
	//Calling timer function block
	timer();
	
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

