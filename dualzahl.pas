PROGRAM Dualzahl;
  VAR
    n : Integer;

(* Can we assume an upper bound on n?*)
FUNCTION Binaer(x : Integer) : Longint;
  VAR
    bin : Longint;
    rest : Longint;
    stelle : Longint;
  BEGIN
    bin := 0;
    stelle := 1;
    WHILE x > 0 DO
      BEGIN
        rest := x MOD 2;
        x := x DIV 2;
	bin += rest * stelle;
	stelle *= 10;
      END;
    Binaer := bin;
  END;

BEGIN
  READ(n);
  IF n > 0 THEN
    WRITELN(Binaer(n));
END.
