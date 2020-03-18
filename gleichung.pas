PROGRAM Gleichung;
  VAR
    a : Real;
    b : Real;
    c : Real;
    x1 : Real;
    x2 : Real;
    disc : Real;

BEGIN
  WRITE('Geben Sie bitte die Koeffizienten der Funktion f(x) = ax^2+bx+c ein: ');
  READ(a, b, c);
  disc := sqr(b)-4*a*c;
  IF disc >= 0 THEN
    BEGIN
      IF a = 0 THEN
        BEGIN
	  IF b <> 0 THEN
	    BEGIN
	      x1 := -c/b;
	      WRITELN('x1 = ', x1);
	    END
	  ELSE
	    BEGIN
              IF c = 0 THEN
	        WRITELN(0)
	      ELSE
	        WRITELN('Keine reelle Loesung.')
	    END
	END
      ELSE
        BEGIN
	  IF disc > 0 THEN
	    BEGIN
              x1 := (-b + sqrt(disc)) / (2 * a);
              x2 := (-b - sqrt(disc)) / (2 * a);
	      WRITELN('x1 = ', x1);
	      WRITELN('x2 = ', x2);
	    END
          ELSE
	    BEGIN
	      x1 := -b / (2*a);
	      WRITELN('x1 = ', x1);
	    END
	END
    END
  ELSE
    WRITELN('Keine reelle Loesung.')
END.
