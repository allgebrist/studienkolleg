PROGRAM Oktalzahl;
  VAR
    n : Longint;
    k : Integer;
    stelle : Integer;
    oktal : array[0..32] of Integer;

BEGIN
  READ(n);
  stelle := 0;
  WHILE n > 0 DO
    BEGIN
      oktal[stelle] := n MOD 8;
      n := n DIV 8;
      stelle += 1;
    END;

  FOR k := stelle-1 DOWNTO 0 DO
    WRITE(oktal[k]);

  WRITELN()
END.

