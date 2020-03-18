PROGRAM Ungerade;
  VAR
    x : Integer; {Eine ungerade Zahl}
    rep : Integer; {Wiederholungen}
    summe : Integer; {Summe}

BEGIN
  x := 1;
  rep := 1;
  summe := 0;
  REPEAT
    summe += x; 
    x += 2;
    rep += 1
  UNTIL rep = 101;
  WRITELN(summe)
END.
