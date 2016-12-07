program Project1;
const m=50;
  type vector=array[1..m]of integer;
  var a:vector;n,p,i:integer;
begin
  write('n=');readln(n);
  p:=1;
  for i:=1 to n do
  begin
    read(a[i]);
    if a[i]-i>0 then p:=p*a[i];
  end;
  writeln('p=',p);
   readln();
end.

