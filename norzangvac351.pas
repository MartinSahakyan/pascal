program norzangvac351;
type vector = array [1..50] of integer;
var a, b : vector; z, n, i, j, k, m :integer;
begin
 write('n =');
 read(n);
 m := 1;
 for i := 1 to n do
 begin
   read(a[i]);
 end;
 for i := 1 to n do
       begin
         z := 0;
         for j := 1 to n do
           begin
             if a[i] = a[j] then
             z := z + 1;
           end;
         if (z = 1) then
         begin
             b[m] := a[i];
             write (b[m]);
             m := m + 1;
         end;
       end;

end.

