PROGRAM Unbekannt;

PROCEDURE Rule90(n : Integer);
  VAR
    x, y : Integer;
    k : Integer;
  BEGIN
    y := n-1;
    WHILE y >= 0 DO
      BEGIN
        FOR k := 0 TO y DO
	  WRITE(' ');
	
	x := 0;
	WHILE x + y < n DO
	  BEGIN
            IF x AND y <> 0 THEN
	      WRITE(' ', ' ')
	    ELSE
	      WRITE('* ');
	    x += 1;
	  END;
	WRITELN();
	y -= 1;
      END;
  END;

BEGIN
  Rule90(32);
END.
