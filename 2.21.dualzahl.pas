PROGRAM Dualzahl;
  VAR
    n : Longint;
    k : Integer;
    stelle : Integer; 
    dual : array[0..32] of Integer;

BEGIN
  READ(n);
  stelle := 0;
  WHILE n > 0 DO
    BEGIN
      dual[stelle] := n MOD 2;
      n := n DIV 2;
      stelle += 1;
    END;
  
  FOR k := stelle-1 DOWNTO 0 DO
    WRITE(dual[k]);

  WRITELN()
END.
