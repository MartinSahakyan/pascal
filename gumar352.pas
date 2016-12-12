program gumar352;
type vector = array [1..50] of integer;
var a : vector; z, n, i, j, s :integer;
begin
 write('n =');
 read(n);
 s := 0;
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
         if (z <> 1) then
         begin
             s := s + a[i];
         end;
       end;
 write ('s =', s);
end.

