program changinglines;
type Matrix = array[1..50,1..50] of integer;
var a : matrix; column1, column2, column3, i, j, m, n : integer;

begin
  write('n, m, column1, column2 =');
  read(n, m, column1, column2);
  for i := 1 to m do
  for j := 1 to n do
      read(a[i][j]);
  if(1 <= column1 ) then
        if(column1 < column2 ) then
               if(column2 <= m ) then
                   for j := 1 to n do
                   begin
                     column3 := a[column1][j];
                     a[column1][j] := a[column2][j];
                     a[column2][j] := column3;
                   end;
  for i := 1 to m do
    for j := 1 to n do
          write(a[i][j]);
end.

