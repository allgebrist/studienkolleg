PROGRAM Einkaufen;
  VAR
    money : Real;
    cost : Real;
    n_ananas : Real;
    remaining : Real;

BEGIN
  WRITELN('Wie viel Geld haben Sie dabei?');
  READ(money);
  WRITELN('Wie viel kostet eine Ananas?');
  READ(cost);
  
  IF cost = 0 THEN
    WRITELN('Die Ananas sind kostenlos! Nehmen Sie alle mit!')
  ELSE
    BEGIN
      n_ananas := trunc(money / cost);
      WRITELN('Sie können ', n_ananas:0:0, ' Ananas kaufen!');
      IF n_ananas = 0 THEN remaining := 0
      ELSE remaining := money - (n_ananas * cost);
      WRITE('Ihr Restgeld ist ', trunc(remaining), ',');
      IF frac(remaining) > 0.09 THEN
        WRITE(frac(remaining)*100:0:0)
      ELSE
        WRITE('0', frac(remaining)*100:0:0);
      WRITELN('€');
    END;
    END.
