program kentzuygerihanumzangvacnerum276;
type vector = array[1..50] of integer;
var n, i, s, p: integer; a,b :vector ;

begin
  write('n ='); read(n);
  s := 0;
  P := 0;
  for i := 1 to n do
  begin
      read(a[i]);
      if (a[i] mod 2 <> 0) then
      s := s + a[i];
  end;
  for i := 1 to n do
  begin
      read(b[i]);
      if (b[i] mod 2 = 0) then
      p := p + b[i];
  end;
  s := s - p ;
  writeln('tarberutyuny =',s);
  readln;
end.

