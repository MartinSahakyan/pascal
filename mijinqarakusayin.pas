program mijinqarakusayin;

const m=50;
type vector=array[1..m]of integer;
var a: vector;
var n, k, s, i:integer;

begin
  s := 0;
  k := 0;

  // Read the array length
  write('n = ');
  readln(n);

  // fill the array
  for i := 1 to n do
    readln(a[i]);

  // for each member of array check the condition
  for i := 1 to n do
    begin
      if (a[i] > i) then
         begin
           s := s + a[i]*a[i];
           k := k + 1;
         end;
    end;

  writeln('mijin qarakusayin = ',(sqrt(s))/k);
  readln
end.

