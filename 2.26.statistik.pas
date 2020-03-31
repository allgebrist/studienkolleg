PROGRAM Statistik;
  VAR
    n : Integer;
    i, j : Integer;
    temp_min : Integer;
    temp_min_idx : Integer;
    zahlen : array of Integer;
    mittelwert : Real;
    median : Real;
    stdab : Real;

BEGIN
  READ(n);
  SetLength(zahlen, n);
  
  mittelwert := 0;
  
  (* Aus Uebung 25 *)
  FOR i := 0 TO n-1 DO
    BEGIN
      READ(zahlen[i]);
      mittelwert += zahlen[i];
    END;

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

  IF n <> 0 THEN
    BEGIN
        (* Mittelwert *)
	mittelwert := mittelwert / n;
	WRITELN('Der Mittelwert ist: ', mittelwert:0:1);

	(* Median *)
	IF n MOD 2 = 0 THEN
	  median := (zahlen[n DIV 2] + zahlen[(n DIV 2)-1]) / 2
	ELSE
	  median := zahlen[n DIV 2];
	WRITELN('Der Median ist: ', median:0:1);

	(* Standardabweichung *)
        stdab := 0;
	FOR i := 0 TO n-1 DO
	  stdab += sqr(zahlen[i]-mittelwert);
	stdab /= n;
	stdab := sqrt(stdab);
	WRITELN('Die Standardabweichung ist: ', stdab:0:1);
    END;

END.
