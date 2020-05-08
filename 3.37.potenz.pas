PROGRAM Potenz;
  VAR
    a, b : Real;
    n, m : Integer;

FUNCTION Potenzieren(basis : Real; exponent : Integer) : Real;
  VAR
    temp : Real;
  BEGIN
    temp := 1;
    
    IF exponent < 0 THEN
      BEGIN
        exponent *= (-1);
        basis := 1 / basis;
      END;

    WHILE True DO
      BEGIN
        IF exponent MOD 2 <> 0 THEN
	  temp *= basis;
	
	exponent := exponent DIV 2;
	IF exponent = 0 THEN
	  BREAK;
	basis *= basis;
      END;
    Potenzieren := temp;
  END;

BEGIN
  WRITE('a: '); READ(a);
  WRITE('n: '); READ(n);
  WRITE('b: '); READ(b);
  WRITE('m: '); READ(m);
  
  WRITELN(Potenzieren(a, n) + Potenzieren(b, m):0:3);

END.
