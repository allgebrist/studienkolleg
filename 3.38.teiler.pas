PROGRAM Teiler;
  VAR
    n : Longint;

PROCEDURE AlleTeiler(zahl : Longint);
  VAR
    k : Longint;
  BEGIN
    k := 1;
    WHILE k * k <= zahl DO
      BEGIN
        IF zahl MOD k = 0 THEN
	  BEGIN
            WRITE(k, '; ');
	    IF zahl DIV k <> k THEN
	      BEGIN
                WRITE(zahl DIV k, '; ');
	      END
	  END;
	k += 1;
      END;
    WRITELN();
  END;

BEGIN
  READ(n);
  AlleTeiler(n);
END.
