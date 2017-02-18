program drakan0avelacnel324;
type vector = array [1..50]  of integer;
var x, y : vector; n, i, j, k : integer;

begin
  k := 1;
  write('n =');
  read(n);
  for i := 1 to n do
  begin
    read(x[i]);
    if(x[i] > 0 ) then
        begin
          x[i] := x[i] * 10;
          k := k + 1;
        end;
  end;
  for i := 1 to n do
  write(x[i],' ');
  readln
end.
