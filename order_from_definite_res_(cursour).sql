SET SERVEROUTPUT ON
DECLARE
c_id ORDER_LOGS.CUSTOMER_ID%type;
o_no ORDER_LOGS.ORDER_NO%type;
r_name ORDER_LOGS.RESTAURANT_NAME%type;
CURSOR c_orders is
SELECT customer_id,order_no,restaurant_name FROM order_logs;
BEGIN
OPEN c_orders;
LOOP
FETCH c_orders into c_id, o_no, r_name;
EXIT WHEN c_orders%ROWCOUNT > 9;
if(r_name='The coffe club')
then
dbms_output.put_line(c_id || ' ' || o_no || ' ' || r_name);
end if;
END LOOP;
CLOSE c_orders;
END;