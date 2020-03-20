PROGRAM Uhr;
  VAR
    total : Integer;
    stunden : Integer;
    minuten : Integer;
    sekunden : Integer;

BEGIN
  READ(total);
  
  stunden := total DIV 3600;
  minuten := (total MOD 3600) DIV 60;
  sekunden := total MOD 60;
  
  IF stunden >= 10 THEN WRITE(stunden, ':')
  ELSE WRITE('0', stunden, ':');

  IF minuten >= 10 THEN WRITE(minuten, ':')
  ELSE WRITE('0', minuten, ':');

  IF sekunden >= 10 THEN WRITELN(sekunden)
  ELSE WRITELN('0', minuten)
END.
