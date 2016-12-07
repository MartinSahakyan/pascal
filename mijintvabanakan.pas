program mijintvabanakan;

  Uses math;

  const m=50;
  type vector=array[1..m]of integer;
  var a: vector;
  var n, k, s, j, i:integer;

begin
  write('n =');
  readln(n);
  k := 1;
  for i := 1 to n do
   readln(a[i]);
   begin
    s := a[1];
    for j := 2 to ceil(i / 2) do
    begin
      for i := 1 to n do
      if i = j * j then
      begin
        s := s + a[i];
        k := k + 1;
      end;
    end;
   end;
  writeln('mijin tvabanakany = ',s / k) ;
  readln
  end.

