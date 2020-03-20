PROGRAM Test;
  VAR
    a : Longint;
    b : Longint;
    summe : Longint;
    differenz : Longint;
    produkt : Longint;
    quotient : Longint;

BEGIN
  WRITELN('Geben Sie bitte zwei ganze Zahlen ein:'); 
  READ(a, b);
  
  WRITE('Geben Sie ihre Summe ein: ');
  READ(summe);

  IF summe = a + b THEN
    WRITELN('Ihre Antwort ist richtig.')
  ELSE
    WRITELN('Die richtige Antwort ist: ', a + b);

  (* Difference is non-commutative. 
     Which order are we suppose to take? *)
  WRITE('Geben Sie ihre Differenz ein: '); 
  READ(differenz);

  IF differenz = a - b THEN
    WRITELN('Ihre Antwort ist richtig.')
  ELSE
    WRITELN('Die richtige Antwort ist: ', a - b);
  
  WRITE('Geben Sie ihr Produkt ein: '); 
  READ(produkt);

  IF produkt = a * b THEN
    WRITELN('Ihre Antwort ist richtig.')
  ELSE
    WRITELN('Die richtige Antwort ist: ', a * b);

  IF b <> 0 THEN
    BEGIN
      WRITE('Geben Sie ihren Quotient ein: '); 
      READ(quotient);
      IF quotient = a DIV b THEN
        WRITELN('Ihre Antwort ist richtig.')
      ELSE
        WRITELN('Die richtige Antwort ist: ', a DIV b);
    END
  ELSE
    WRITELN('Der Quotient ist nicht definiert.');

END.
