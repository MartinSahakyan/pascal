program plus0minus328;
type vector = array [1..50]  of integer;
var x, a : vector; n, i, j, k : integer;

begin
  j := 0;
  write('n =');
  read(n);
  k := n + 1;
  for i := 1 to n do
  begin
    read(x[i]);
    if(x[i] < 0 ) then
        begin
          j := j + 1;
          a[j] := x[i];
        end
    else
    begin
    k := k - 1;
    a[k] := x[i];
    end;
  end;
  for i := j + 1 to k - 1 do
  a[i] := 0;
  for i := 1 to n do
  write(a[i],' ');
  readln
end.
