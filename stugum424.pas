program stugum424;
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
         for j := 1 to n do
           z := 0;
           begin
             if a[i] = a[j] then
             z := z + 1;
           end;
         if (z = 1) then
            if( a[i] > 0) then
                if (a[i] < n+1)  then
                   write ('yes')
         else  write('no');
         end;

end.

