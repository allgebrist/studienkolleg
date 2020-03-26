PROGRAM Sortieren;
  VAR
    n : Integer;
    i, j : Integer;
    temp_min : Integer;
    temp_min_idx : Integer;
    zahlen : array of Integer;
    
BEGIN
  READ(n);
  SetLength(zahlen, n);
  
  FOR i := 0 TO n-1 DO
    READ(zahlen[i]);
  
  FOR i := 0 TO n-1 DO
    BEGIN
      temp_min_idx := i;
      temp_min := zahlen[i];
      FOR j := i+1 TO n-1 DO
        BEGIN
          IF zahlen[j] < zahlen[temp_min_idx] THEN
	    BEGIN
	      temp_min_idx := j;
	      temp_min := zahlen[temp_min_idx];
	    END;
	END;
      IF temp_min_idx <> i THEN
        BEGIN
          zahlen[temp_min_idx] := zahlen[i];
	  zahlen[i] := temp_min;
        END;
    END;

  FOR i := 0 TO n-1 DO
    WRITE(zahlen[i], ' ');

  WRITELN()

END.
