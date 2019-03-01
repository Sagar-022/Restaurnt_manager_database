SET SERVEROUTPUT ON
create procedure reasonable is

   food_price food.fid%type;
   food_name food.fname%type;
BEGIN
DBMS_OUTPUT.PUT_LINE ('Finding out if the price of the chicken burger available is reasonable');
   SELECT price,fname  INTO food_price,food_name
   FROM food where fname='chicken burger';
   if food_price<100
   then
   DBMS_OUTPUT.PUT_LINE('The price is reasonable');
   else
   DBMS_OUTPUT.PUT_LINE('The price is not reasonable');
   end if;
 END reasonable;
 
 exec reasonable();