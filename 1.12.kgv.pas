PROGRAM KGV;
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

FUNCTION kgv(x, y : Integer) : Integer;
  BEGIN
    kgv := (x * y) DIV ggt(x, y);
  END;

BEGIN
  READ(a);
  READ(b);
  WRITELN(kgv(a, b));
END.
