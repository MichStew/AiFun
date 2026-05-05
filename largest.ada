with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Int_Array is array (Positive range <>) of Integer;
   Number_List : constant Int_Array := (33, 65, 27, 223, 63);
   Largest : Integer := Number_List(Number_List'First);
begin
   for I in Number_List'First + 1 .. Number_List'Last loop
      if Number_List(I) > Largest then
         Largest := Number_List(I);
      end if;
   end loop;

   Put_Line("the largest number is" & Integer'Image(Largest));
end Main;
