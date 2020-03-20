PROGRAM Geburtsjahr;
  VAR
    jahr : Integer;
    ergebnis : Real;

BEGIN
  READ(jahr);
  ergebnis := (((((2*jahr)+5)*50)+(2020-jahr))-250)/100;
  WRITELN(ergebnis:0:2)
END.
