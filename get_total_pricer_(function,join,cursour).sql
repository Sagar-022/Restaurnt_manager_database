CREATE OR REPLACE FUNCTION get_total_sell(
  r_name IN order_logs.restaurant_name%type,
  c_id IN order_logs.customer_id%TYPE)  
RETURN NUMBER
IS
total_sell_price integer:=0;
f_price FOOD.PRICE%type;
f_quan order_logs.quantity%type;
cursor c is 
  select price, quantity from order_logs o  join food f on o.food_id = f.fid where o.restaurant_name = r_name and o.customer_id = c_id;



BEGIN
 open c;
 LOOP
 fetch c into f_price, f_quan;
 exit when c%notfound;
 total_sell_price := total_sell_price + f_price * f_quan;
END LOOP;
close c;
 
RETURN total_sell_price;
END get_total_sell;
/


SET SERVEROUTPUT ON;
DECLARE
  r_name order_logs.restaurant_name%type := 'Olive';
  c_id order_logs.customer_id%TYPE := 8;
BEGIN
DBMS_OUTPUT.PUT_LINE('Total sell of restaurant ' || r_name || ' to customer ' || c_id || ' is ' || get_total_sell(r_name, c_id));
END;
/