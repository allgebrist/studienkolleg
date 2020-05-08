PROGRAM Sortieren2;
  VAR
    n : Integer;
    k : Integer;
    zahlen : array of Integer;
  
PROCEDURE Sortieren(vektor : array of Integer; laenge : Integer);
  VAR
    i, j : Integer;
    temp_min : Integer;
    temp_min_idx : Integer;

BEGIN

  FOR i := 0 TO n-1 DO
    BEGIN
      temp_min_idx := i;
      temp_min := vektor[i];
      FOR j := i+1 TO n-1 DO
        BEGIN
          IF vektor[j] < vektor[temp_min_idx] THEN
            BEGIN
              temp_min_idx := j;
              temp_min := vektor[temp_min_idx];
            END;
        END;
      IF temp_min_idx <> i THEN
        BEGIN
          vektor[temp_min_idx] := vektor[i];
          vektor[i] := temp_min;
        END;
    END;
    
    FOR i := 0 TO n-1 DO
      WRITE(-vektor[i], ' ');

    WRITELN()

END;

BEGIN
  READ(n);
  SetLength(zahlen, n);
  
  FOR k := 0 TO n-1 DO
    BEGIN
      READ(zahlen[k]);
      zahlen[k] := -zahlen[k];
    END;
  
  Sortieren(zahlen, n);

END.
