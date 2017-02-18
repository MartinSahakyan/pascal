program exString;
uses sysutils;

var T : string;

function findA(input : string) : integer;
var
    i, k, n : integer;
begin
    k := 0;
    n := length(input);

    for i := 1 to n do
        if(input[i] = 'a') then
         k := k + 1;

    findA := k;
end;

function XtoYY(input : string) : string;
var
    i, n : integer;
    res : string;
begin
  n := length(input);

  for i := 1 to n do
      if(input[i] <> 'x') then
          appendstr(res, input[i])
      else
          appendstr(res, 'yy');

  XtoYY := res;
end;

function RemoveAB(input : string) : string;
var
    i, n : integer;
    res : string;
begin
  n := length(input);
  i := 1;

  while (i <> n + 1) do
    if((input[i] = 'a') and (input[i + 1] = 'b')) then
          i := i + 2
    else
    begin
        appendstr(res, input[i]);
        i := i + 1
    end;

  RemoveAB := res;
end;

function RemoveThird(input : string) : string;
var
    i, n : integer;
    res : string;
begin
  n := length(input);

  for i := 1 to n do
      if(i mod 3 <> 0) then
            appendstr(res, input[i]);

  RemoveThird := res;
end;
function CoolIKnowFunctions(input : string) : integer;
var
    i, k, n, m, j : integer;
begin
    k := 0;
    m := 0;
    n := length(input);

    for i := 1 to n do
        if(input[i] = 'x') then
         k := k + 1;
    if(k = 5) then
    for i := 1 to n do
        if(input[i] = 'c') then
        m := m + 1
    else if (k > 5) then
            for j := 1 to n do
            if(input[j] = 'd') then
            m := m + 1;

    CoolIKnowFunctions := m;
end;

function Vowel(input : string) : integer;
var
    i, k, n :integer;
begin
    k := 0;
    n := length(input);

    for i := 1 to n do
        if(input[i] = '.') then
         for j := i to n do
             if(input[j] = 'a' or input[j] = 'e' or input[j] = 'i' or input[j] = 'o' or input[j] = 'y' or input[j] = 'u') then
                         k := k + 1;
end;

begin
   write('T = ');
   read(T);

   writeln('findA : ', findA(T));
   writeln('XtoYY : ', XtoYY(T));
   writeln('RemoveAB : ', RemoveAB(T));
   writeln('RemoveThird : ', RemoveThird(T));
   writeln('CoolIKnowFunctions :', CoolIKnowFunctions(T));
end.


