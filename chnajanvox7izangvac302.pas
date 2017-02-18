program chnajanvox7izangvac302;
type vector = array [1..50]  of integer;
var x, y : vector; n, i, j, k : integer;

begin
  k := 1;
  write('n =');
  read(n);
  for i := 1 to n do
  begin
    read(x[i]);
    if(x[i] mod 7 <> 0) then
        begin
          y[k] := x[i];
          k := k + 1;
        end;
  end;
  for i := 1 to k-1 do
  write(y[i],' ');
  readln
end.

