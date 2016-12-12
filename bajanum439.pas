program bajanum439;
type matric = array[1..50,1..50] of integer;
var a : matric; n, k, i, j : integer;
begin
  write('n =');
  read(n);
  k := 0;
  for i := 1 to n do
      for j := 1 to n do
          read(a[i][j]);
  for i := 1 to n do
      for j := 1 to n do
          if (i <= j) then
          if(a[i][j] mod 5 = 3) then
          k := k + 1;
  write('k =',k)
end.

