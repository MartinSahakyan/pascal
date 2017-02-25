program RemoveCombinations;
Var   T, S, Combinations : string;
          n, p : integer;
Begin
    Write('T=');
    Readln(T);
    Write('');
    Readln(Combinations);
    n:=Length(Combinations);
    S:=T;
    Repeat
         p := Pos(Combinations,S);
         if  p <> 0  then
             Delete(S,p,n);
    Until  p=0;
    Writeln(S)
End.
