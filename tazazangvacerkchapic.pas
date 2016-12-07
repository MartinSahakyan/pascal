program tazazangvacerkchapic;
type matrix = array[1..50,1..50]of integer;
type vector = array[1..50]of integer;
var a : matrix;  b : vector;
var n, m, i, j, k, q, c : integer; s : real;

begin
  write('n,m =');
  readln(n,m);
  for i := 1 to n do
    for j := 1 to
 m do
      begin
           read(a[i, j]);
      end ;
  for k := 1 to n do
    begin
         s := a[k][1] ;
         for q := 1 to m do
           begin
               if (a[k][q] >= s) then
               begin
                 s := a[k][q];
                 b[k] := q ;
               end;
           end;
    end;
    for c := 1 to n do
    begin
         write(b[c], ' ');
    end;
  readln();
end.

