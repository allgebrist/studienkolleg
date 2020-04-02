PROGRAM Frage1;
  VAR
    n : Longint;
    k : Longint;
    zahlen : array of Longint;

BEGIN
  READ(n);
  SetLength(zahlen, n);

  FOR k := 0 TO n-1 DO
    READ(zahlen[k]);

  (* even numbers *)
  FOR k := 0 TO n-1 DO
    IF zahlen[k] MOD 2 = 0 THEN
      WRITE(zahlen[k], ' ');

  WRITELN();

  (* odd numbers *)
  FOR k := 0 TO n-1 DO 
    IF zahlen[k] MOD 2 <> 0 THEN
      WRITE(zahlen[k], ' ');

  WRITELN();

  (* greater than or equal to 10 *)
  FOR k := 0 TO n-1 DO
    IF zahlen[k] >= 10 THEN
      WRITE(zahlen[k], ' ');

  WRITELN();

END.
