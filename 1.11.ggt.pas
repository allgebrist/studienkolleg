PROGRAM GGT;
  VAR
    a : Integer;
    b : Integer;

FUNCTION ggt(x, y : Integer) : Integer;
  BEGIN
    IF y = 0 THEN
      ggt := x
    ELSE
      ggt := ggt(y, x MOD y);
  END;

BEGIN
  READ(a);
  READ(b);
  WRITELN('GGT: ', ggt(a, b));
END.
