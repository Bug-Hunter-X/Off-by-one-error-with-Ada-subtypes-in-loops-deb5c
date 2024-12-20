```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   My_Variable: My_Sub_Type := 1;
begin
   loop
      My_Variable := My_Variable + 1;
      exit when My_Variable > 10; --Potential Issue: Exiting the loop at 11, not 10
   end loop;
   Put_Line("My_Variable:" & My_Variable'Image);
end Example;
```