program exString;
uses sysutils, math;

var
    T : string;
    Vowels : array[1..6] of char;
    Consonants : array[1..20] of char;

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
    i, k, n, m :integer;
begin
    k := 0;
    n := length(input);

    for i := 1 to n do
        if(input[i] = '.') then
         m := i;
    for i := m to n do
        if ((input[i] = 'o') or (input[i] = 'y') or (input[i] = 'u') or (input[i] = 'i') or (input[i] = 'e') or (input[i] = 'a') ) then
           k := k + 1;
    Vowel := k;
end;

function LessThenP(input : string) : integer;
Type vector = array [1..50] of integer;
var
    i, n, k, z : integer;
    a : vector;
begin
  k := 0;
  n := length(input);
  z := 0;
  for i := 1 to n do
      if(input[i] = 'p') then
         begin
              k := k + 1;
              a[k] := i;
         end;
  for i := a[1] to a[k] do
      if(input[i] < 'p') then
         z := z + 1;
  LessThenP := z;
end;

function IsVowel(input : char) : boolean;
var i : integer;
begin
  IsVowel := false;
  for i := 1 to 6 do
      if(input = Vowels[i]) then
         begin
              IsVowel := true;
              break;
         end;
end;

function IsConsonant(input : char) : boolean;
var i : integer;
begin
  IsConsonant := false;
  for i := 1 to 6 do
      if(input = Consonants[i]) then
         begin
              IsConsonant := true;
              break;
         end;
end;

procedure Init();
var
    letter : char;
    i : integer;
begin
  // filling vowels
  Vowels[1] := 'a';
  Vowels[2] := 'u';
  Vowels[3] := 'e';
  Vowels[4] := 'i';
  Vowels[5] := 'o';
  Vowels[6] := 'y';

  // filling consonants
  i := 1;
  for letter := 'a' to 'z' do
      if not(IsVowel(letter)) then
         begin
           Consonants[i] := letter;
           i := i + 1;
         end;
end;

function OppositeString(string1 : string) : string;
var
    i, n : integer;
    string2 : string;
begin
  n := length(string1);
  for i := n downto 1 do
      begin
        appendstr(string2,string1[i]);
      end;

  OppositeString := string2;
end;

function TheSameString(string1 : string) : boolean;
var
    i, n : integer;
    string2 : string;
begin
  n := length(string1);

  for i := n downto 1 do
      begin
        appendstr(string2,string1[i]);
      end;
  if(string2 = string1) then
    TheSameString := true
  else
    TheSameString := false;
end;

function TheSameThing(string1 : string) : string;
var
    i, n : integer;
    c : char;
    string2 : string;
begin
  n := length(string1);
  appendstr(string2,string1);
  for i := 1 to floor(n / 2) do
      begin
         c := string2[i];
         string2[i] := string2[n + 1 - i];
         string2[n + 1 - i] := c;
      end;

  TheSameThing := string2;
end;

function SimplifyString(input : string) :string;
var
    i, n, j, k : integer;
    Simplify : string;
begin
     n := length(input);
     for i := 1 to n do
         begin
           k := 0;
           for j := 1    to n do
               if(input[i] = input[j]) then
                 k := k + 1;
           if (k = 1) then
              appendstr(Simplify,input[i]);
         end;
     SimplifyString := Simplify;
end;

function CreateSet(input : string) : string;
var
    i, n, j, k : integer;
    Myset : string;
begin
     n := length(input);
     for i := 1 to n do
         begin
           k := 0;
           for j := i    to n do
               if(input[i] = input[j]) then
                 k := k + 1;
           if (k = 1) then
              appendstr(Myset,input[i]);
         end;
     CreateSet := Myset;
end;

procedure swap( var a, b: char );
var
  new : char;
begin
  new := a;
  a := b;
  b := new;
end;

function BubbleSort( input : string ) : string;
var
  n, newn, i : integer;
begin
  n := length(input);
  repeat
    newn := 0;
    for i := 1 to n   do
      begin
        if (input[ i - 1 ] > input[ i ]) then
          begin
            swap( input[ i - 1 ], input[ i ]);
            newn := i ;
          end;
      end ;
    n := newn;
  until n = 0;

  Bubblesort := input ;
end;

function newstring(input : string) : string;
var
   new : string;
   i, n : integer;
begin
  n := length(input);
  for i := 2 to n - 1 do
    if ((input[i] > input[i - 1]) and (input[i] < input[i + 1])) then
      appendstr(new, input[i]);
  newstring := new;
end;

begin
   Init();
   write('T = ');
   read(T);

   writeln('findA : ', findA(T));
   writeln('XtoYY : ', XtoYY(T));
   writeln('RemoveAB : ', RemoveAB(T));
   writeln('RemoveThird : ', RemoveThird(T));
   writeln('CoolIKnowFunctions :', CoolIKnowFunctions(T));
   writeln('Vowel :', Vowel(T));
   writeln('LessThenP :', LessThenP(T));
   writeln('OppositeString :', OppositeString(T));
   writeln('TheSameString :', TheSameString(T));
   writeln('TheSameThing :', TheSameThing(T));
   writeln('SimplifyString :', SimplifyString(T));
   writeln('CreateSet :', CreateSet(T));
   writeln('Bubblesort :', Bubblesort(T));
   writeln('newstring :', newstring(T));

end.


