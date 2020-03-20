PROGRAM Sterne;
  VAR
    n : Integer;
    i : Integer;
    j : Integer;

BEGIN
  READ(n);
  FOR i := n DOWNTO 1 DO
    BEGIN
      FOR j := i DOWNTO 1 DO
        WRITE('*');
      WRITELN();
    END;
END.
