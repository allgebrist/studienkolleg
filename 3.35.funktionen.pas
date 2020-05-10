PROGRAM Funktionen;
  VAR
    x : Real;
    i : Integer;
    koef1 : array[0..2] of Integer;
    koef2 : array[0..2] of Integer;

FUNCTION Summe(arr1 : array of Integer; 
	       arr2 : array of Integer; 
	       x : Real) : Real;
  BEGIN
    Summe := ((arr1[0]*x*x + arr1[1]*x + arr1[2]) +
   	      (arr2[0]*x*x + arr2[1]*x + arr2[2])); 
  END;

FUNCTION Differenz(arr1 : array of Integer;
		   arr2 : array of Integer;
		   x : Real) : Real;
  BEGIN
    Differenz := ((arr1[0]*x*x + arr1[1]*x + arr1[2]) - 
    	      	  (arr2[0]*x*x + arr2[1]*x + arr2[2]));
  END;

BEGIN

  WRITELN('Geben Sie die Koeffizienten a1, b1 und c1 ein: ');
  FOR i := 0 TO 2 DO
    READ(koef1[i]);
  
  WRITELN('Geben Sie die Koeffizienten a2, b2 und c2 ein: ');
  FOR i := 0 TO 2 DO
    READ(koef2[i]);
  
  WRITELN('Geben Sie den Wert von x ein: ');
  READ(x);

  WRITELN('Die Summe ist: ', Summe(koef1, koef2, x):0:3);
  WRITELN('Die Differenz ist: ', Differenz(koef1, koef2, x):0:3);

END.
