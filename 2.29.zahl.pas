PROGRAM Zahl;
  VAR
    n : Longint;
    i, j : Longint;

BEGIN
  READ(n);

  (* ###########################
  
  Method 1: Brute-force.
            Runs in O(n^2).
	    Shows repeated pairs.
  
  FOR i := 1 TO n DO
    FOR j := 1 TO n DO
      IF i + j = n THEN
      WRITELN(i, ' ', j);
  
  ############################ *)

  (* Method 2: Two-pointers.
               Runs in O(n). 
	       Shows unique pairs. *)

  i := 1; j := n;
  WHILE i <= j DO
    BEGIN
      IF i + j = n THEN
        WRITELN(i, ' ', j);
      IF i + j > n THEN
        j -= 1
      ELSE
        i += 1
    END

END.
