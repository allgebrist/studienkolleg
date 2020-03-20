PROGRAM Collatz;
  VAR 
    n : Integer;
    iterations : Integer;

BEGIN
  READ(n);
  WRITELN('Zwischenwerte: ');
  WRITELN(n);
  iterations := 0;
  WHILE n > 1 DO
    BEGIN
      IF n MOD 2 = 0 THEN
        n := n div 2
      ELSE
        n := 3*n+1;
      iterations += 1;
      WRITELN(n);
    END;
  WRITELN();
  WRITELN('Anzahl der Iterationen:', iterations);
END.
