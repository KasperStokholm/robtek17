
PROGRAM _INIT
	//Starter programmet ud med at sætte det hele til at være stille.
	x_dir := FALSE;
	x_en := TRUE;
	x_step := FALSE;
	
	y_dir := FALSE;
	y_en := TRUE;
	y_step := FALSE;
	
	z_dir := FALSE;
	z_en := TRUE;
	z_step := FALSE;
	stepCount := 101;
END_PROGRAM

PROGRAM _CYCLIC
	WHILE stepCount > 100 DO
		IF x_step = FALSE THEN
			x_step := TRUE;
		ELSE
			x_step := FALSE;
		END_IF
	END_WHILE
		
			
	stepCount := stepCount + 1;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

