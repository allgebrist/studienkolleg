PROGRAM Sort;
  VAR
    n : Longint;
    i, j : Integer;
    cnt : Integer;
    temp_min : Integer;
    temp_min_idx : Integer;
    stellen : array[0..32] of Integer;
    
BEGIN
  READ(n);
  cnt := 0;
 
  WHILE n > 0 DO
    BEGIN
      stellen[cnt] := n MOD 10;
      n := n DIV 10;
      cnt += 1;
    END;
  
  FOR i := 0 TO cnt-1 DO
    BEGIN
      temp_min_idx := i;
      temp_min := stellen[i];
      FOR j := i+1 TO cnt-1 DO
        BEGIN
          IF stellen[j] < stellen[temp_min_idx] THEN
	    BEGIN
	      temp_min_idx := j;
	      temp_min := stellen[temp_min_idx];
	    END;
	END;
      IF temp_min_idx <> i THEN
        BEGIN
          stellen[temp_min_idx] := stellen[i];
	  stellen[i] := temp_min;
        END;
    END;

  FOR i := 0 TO cnt-1 DO
    WRITE(stellen[i]);

  WRITELN()

END.

