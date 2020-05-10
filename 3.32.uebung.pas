PROGRAM Uebung;
  VAR
    n : Integer;

FUNCTION Primzahl(zahl : Integer) : Boolean;
  VAR
    k : Integer;
    flag : Boolean;
  BEGIN
    k := zahl-1;
    flag := true;
    WHILE k > 1 DO
      BEGIN
        IF zahl MOD k = 0 THEN
          BEGIN
            flag := false;
	    BREAK;
	  END
        ELSE 
        k -= 1;	
      END;
    Primzahl := flag;
  END;

BEGIN
  READ(n);
  IF n > 1 THEN
    BEGIN
      IF Primzahl(n) THEN
        WRITELN(n, ' ist eine Primzahl.')
      ELSE
        WRITELN(n, ' ist keine Primzahl.')
    END;
END.
