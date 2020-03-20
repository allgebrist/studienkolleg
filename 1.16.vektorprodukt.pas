PROGRAM Vektorprodukt;
  VAR
    i : Integer;
    sp : Real;
    v1 : array[0..2] of Real;
    v2 : array[0..2] of Real;
    vp : array[0..2] of Real;
    lv1 : Real;
    lv2 : Real;

BEGIN
  FOR i := 0 TO 2 DO
    READ(v1[i]);
  FOR i := 0 TO 2 DO
    READ(v2[i]);
  
  sp := 0;
  {Skalarprodukt}
  FOR i := 0 TO 2 DO
    sp += v1[i] * v2[i];
  WRITELN('Skalarprodukt: ', sp:0:2);

  {Vektorprodukt}
  vp[0] := v1[1]*v2[2] - v1[2]*v2[1];
  vp[1] := v1[2]*v2[0] - v1[0]*v2[2];
  vp[2] := v1[0]*v2[1] - v1[1]*v2[0];
  WRITELN('Vektorprodukt: (', vp[0]:0:2, ', ', vp[1]:0:2, ', ', vp[2]:0:2, ')');

  {Laenge der Vektoren}
  lv1 := sqrt( sqr(v1[0]) + sqr(v1[1]) + sqr(v1[2]) );
  lv2 := sqrt( sqr(v2[0]) + sqr(v2[1]) + sqr(v2[2]) );
  WRITELN('Laenge von v1: ', lv1:0:2);
  WRITELN('Laenge von v2: ', lv2:0:2);  
END.
