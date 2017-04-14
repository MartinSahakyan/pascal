program Homework2;

Var  f, g : Text;
     n, i, j : integer;
     x : real;
Begin
   Assign(f, 'f');
   Assign(g, 'g');
   Write('n = ');
   Readln(n);
   Rewrite(f);
   Rewrite(g);
   For  i := 1  to  n  do
      begin
           read(x);
	   Write(f, ' ', x)
      end;
      close(f);
      Reset(f);
      i := 1;
      j := 0;
      While not eof(f) do
      begin
	read(f, x);
	if odd(trunc(x)) then
        begin
          write(g, ' ', x);
	  j := j + 1
        end;
	i := i + 1
      end;
   close(g);
   reset(g);
   for i := 1 to j do
   begin
        read(g, x);
        write(x, ' ')
   end;
   close(g)
end.



