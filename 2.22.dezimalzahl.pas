PROGRAM Dezimalzahl;
  VAR
    dual : String[8];

FUNCTION Konvertieren(x : String): Integer;
  VAR
    k : Integer;
    temp : Integer;
    dezi : Integer;
  BEGIN
    dezi := 0;
    temp := 1;
    FOR k := 8 DOWNTO 1 DO
      BEGIN
        dezi += (ord(x[k])-ord('0')) * temp;
	temp *= 2;
      END;
    Konvertieren := dezi;
  END;
  

BEGIN
  READLN(dual);
  WRITELN(Konvertieren(dual));
END.
