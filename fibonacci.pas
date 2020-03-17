PROGRAM Fibonacci;
  VAR 
    a : Longint;
    b : Longint;
    c : Longint;
    n : Longint;

BEGIN
  a := 0;
  b := 1;
  FOR n := 1 TO 30 DO
    BEGIN
      c := a + b;
      WRITE(c, ', ');
      a := b;
      b := c;
    END;
  WRITELN('...');
END.
