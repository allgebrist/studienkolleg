PROGRAM Dualzahl.pas;
  VAR
    n : Longint;
    k : Integer;
    stellen : Integer; (* Dualzahl *)
    dual : array[0..32] of Integer;

BEGIN
  READ(n);
  stellen := 0;
  WHILE n > 0 DO
    BEGIN
      dual[stellen] := n MOD 2;
      n := n DIV 2;
      stellen += 1;
    END;
  
  FOR k := stellen-1 DOWNTO 0 DO
    WRITE(dual[k]);

  WRITELN()
END.
