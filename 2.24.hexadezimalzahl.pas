PROGRAM Hexadezimalzahl;
  VAR
    n : Longint;
    k : Integer;
    temp : Integer;
    stelle : Integer;
    hexadezimal : array[0..32] of Char;

BEGIN
  READ(n);
  stelle := 0;
  WHILE n > 0 DO
    BEGIN
      temp := n MOD 16;
      IF temp < 10 THEN
        BEGIN
          hexadezimal[stelle] := chr(temp + 48);
	END
      ELSE
        BEGIN
          hexadezimal[stelle] := chr(temp + 55);
	END;
      n := n DIV 16;
      stelle += 1;
    END;

  FOR k := stelle-1 DOWNTO 0 DO
    WRITE(hexadezimal[k]);

  WRITELN()
END.
