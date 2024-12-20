```ada
procedure Example_Corrected is
   subtype My_Sub_Type is Integer range 1..10;
   My_Variable: My_Sub_Type := 1;
begin
   loop
      My_Variable := My_Variable + 1;
      exit when My_Variable > 10; --Corrected: Exits loop when My_Variable is 11
   end loop;
   Put_Line("My_Variable:" & My_Variable'Image);
end Example_Corrected;

procedure Example_Corrected2 is
   subtype My_Sub_Type is Integer range 1..10;
   My_Variable: My_Sub_Type;
begin
   for My_Variable in My_Sub_Type loop
      Put_Line("My_Variable:" & My_Variable'Image);
   end loop;
end Example_Corrected2;
```