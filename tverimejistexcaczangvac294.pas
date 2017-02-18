program tverimejistexcaczangvac294;
type vector = array [1..50]  of integer;
var x, y : vector; n, i, j, a, b : integer;

begin
  write('n,a,b =');
  read(n,a,b);
  for i := 1 to n do
  begin
    read(x[i]);
    if(x[i]<b) then
      if(x[i]>a) then
      for j := 1 to n do
        y[j] := x[i];
  end;
  for i := 1 to n do
  write(y[i]);
  readln
end.

