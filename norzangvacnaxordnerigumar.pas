program norzangvacnaxordnerigumar;
const m = 50;
type vector = array[1..m]of integer;
var a, b : vector;
var n, i, j, k : integer;

begin
  write('n = '); read(n);
  for i := 1 to n do
    begin
     write('a[i] =');   read(a[i]);
    end;
    b[1] := a[1];
    for j := 2 to n do
      begin
         b[j] := b[j-1] + a[j];
      end;
    for k := 1 to n do
      begin
           write(b[k], ' ')
      end;
 readln();
end.

