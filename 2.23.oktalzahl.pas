PROGRAM Oktalzahl.pas;
  VAR
    n : Longint;
    k : Integer;
    stellen : Integer;
    oktal : array[0..10] of Integer;

BEGIN
  READ(n);
  stellen := 0;
  WHILE n > 0 DO
    BEGIN
      oktal[stellen] := n MOD 8;
      n := n DIV 8;
      stellen += 1;
    END;

  FOR k := stellen-1 DOWNTO 0 DO
    WRITE(oktal[k]);

  WRITELN()
END.

