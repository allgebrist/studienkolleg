PROGRAM Umdrehen;
  VAR
    n : String;
    k : Integer;

BEGIN
  READLN(n);
  FOR k := Length(n) DOWNTO 1 DO
    WRITE(n[k]);
  WRITELN()
END.
