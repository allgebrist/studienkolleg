PROGRAM Primzahl;
  VAR
    n : Integer;
    k : Integer;
    flag : Boolean;

BEGIN
  READ(n);
  k := n-1;
  flag := true;
  WHILE k > 1 DO
    BEGIN
      IF n MOD k = 0 THEN
        BEGIN
          flag := false;
	  BREAK;
	END
      ELSE 
        k -= 1;	
    END;
  IF (flag AND (n <> 1)) THEN
    WRITELN(n, ' ist eine Primzahl.')
  ELSE
    WRITELN(n, ' ist keine Primzahl.') 
END.
