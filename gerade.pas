PROGRAM Gerade;
  VAR
    x : Integer; {Eine gerade Zahl}
    rep : Integer; {Wiederholungen}
    summe : Integer; {Summe}

BEGIN
  x := 2;
  rep := 1;
  summe := 0;
  WHILE rep <= 100 DO
    BEGIN
      summe += x;
      x += 2;
      rep += 1
    END;
  WRITELN(summe)
END.

