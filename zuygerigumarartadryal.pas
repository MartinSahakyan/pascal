program zuygerigumarartadryal;
const m = 50;
type vector = array[1..m]of integer;
var a: vector;
var n, s, p, i: integer;

begin
  writeln('n =');
  readln(n);
  s := 0; p := 1;

  for i := 1 to n do
  begin
    readln(a[i]);
    if(a[i] mod 2 = 0) then
    begin
         p := p * a[i];
         s := s + a[i]
    end;
  end;

  writeln('s = ',s );
  writeln('p = ',p);
  readln();
end.

