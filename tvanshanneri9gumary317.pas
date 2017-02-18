program tvanshanneri9gumary317;
type vector = array [1..50]  of integer;
var  y : vector;  i, k, s, m : integer;

begin
  for i := 100 to 999 do
  begin
    S := 0;
    k := 1;
    m := i;
    repeat
          s := s + ( m mod 10);
          m := m div 10 ;
    until m = 0;
    if(s = 9) then
        begin
          y[k] := i;
          k := k + 1;
        end;
  end;
  for i := 1 to k-1 do
  write(y[i],' ');
  readln
end.

