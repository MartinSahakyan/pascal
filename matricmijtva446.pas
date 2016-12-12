program matricmijtva446;
type matric = array[1..50,1..50] of integer;
var a : matric; n, m, i, j, b, k : integer; s : real;
begin
  write('n, m, b =');
  read(n, m, b);
  s := 0;
  k := 0;
  for i := 1 to n do
      for j := 1 to n do
          read(a[i][j]);
  for i := 1 to n do
      for j := 1 to n do
      begin
          if (i > j) then
          if(a[i][j] > m ) then
          if(a[i][j] < b ) then
          begin
            s := s + a[i][j];
            k := k + 1;
          end;
      end;
s := s/k ;
write('mijin tvabanakany =',k)
end.

