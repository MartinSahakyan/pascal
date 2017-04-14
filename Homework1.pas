program Homework1;

Var  f : Text;
     n, i, k, x, sum : integer;
Begin
   Assign(f, 'VecText.txt');
   Write('n = ');
   Readln(n);
   Rewrite(f);
   For  i := 1  to  n  do
   begin
     read(x);
     Write(f, ' ', x)
   end;
   close(f);
   Write('k = ');
   readln(k);
   Reset(f);
   sum := 0;
   i := 1;
   While not eof(f) do
   begin
        read(f, x);
	if i mod k = 0 then
        sum := sum + x;
	inc(i)
   end;
   writeln('sum = ', sum)
end.


