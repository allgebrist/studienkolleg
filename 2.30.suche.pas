PROGRAM Suche;
  VAR
    k : Integer;
    tmp : Longint;
    gnz : Longint; (* groesste negative Zahl *)
  
BEGIN
  gnz := -2147483648;
  FOR k := 1 TO 10 DO
    BEGIN
      READ(tmp);
      IF ((tmp > gnz) AND (tmp < 0)) THEN
        gnz := tmp;
    END;
  IF gnz = -2147483648 THEN
    WRITELN('Keine negative Zahl gefunden.')
  ELSE
    WRITELN('Die groesste negative Zahl ist: ', gnz);
END.
