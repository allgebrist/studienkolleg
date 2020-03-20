PROGRAM Ableitung;
  VAR
    a : Integer;
    b : Integer;
    c : Integer; (* We are not using c anywhere*)

BEGIN
  WRITELN('Geben Sie bitte die Koeffizienten der Funktion f(x) = ax^2+bx+c ein:');
  READ(a, b, c);
  WRITELN('f(x) = ', 2*a, 'x+', b);
END.
