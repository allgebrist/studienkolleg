PROGRAM Fakultaet;
  VAR
    f : Longint;
    n : Longint;
    i : Longint;
BEGIN
  f := 1;
  READ(n);
  IF n > 0 THEN
    BEGIN
      FOR i := 0 TO n-1 DO
        f := f * (n-i);
      WRITELN(n, '! = ', f)
    END
  ELSE
    IF n = 0 THEN
      WRITELN(n, '! = ', f)
    ELSE
      WRITELN('Die Fakultaet ist nicht definiert')
END.
