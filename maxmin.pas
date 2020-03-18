PROGRAM MaxMin;
  VAR
    n : Integer; {how many numbers are to be inserted?}
    a : Integer; 
    b : Integer;
    temp : Integer;
    iterator : Integer;
    max : Integer;
    min : Integer;

BEGIN
  READ(n);
  READ(a);
  READ(b);
  IF a > b THEN
    BEGIN
      max := a;
      min := b;
    END
  ELSE  
     BEGIN
       max := b;
       min := a;
     END;
  FOR iterator := 3 TO n DO
    BEGIN  
      READ(temp);
      IF temp > max THEN 
        max := temp;
      IF temp < min THEN
        min := temp;
    END;
  WRITELN('Groesste Zahl: ', max);
  WRITELN('Kleinste Zahl: ', min);
  WRITELN('Mittelwert: ', (max + min) / 2);
  WRITELN('Spannweite: ', max - min);
END.
