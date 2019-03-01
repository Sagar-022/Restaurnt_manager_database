SET SERVEROUTPUT ON
DECLARE
x integer(4) := 0001;
customer_id customer.cid%type;
customer_name customer.cname%type;


BEGIN
DBMS_OUTPUT.PUT_LINE ('Name & id of the first five registered customers');
LOOP
SELECT cid,cname
INTO customer_id,customer_name
FROM customer
where cid=x;
DBMS_OUTPUT.PUT_LINE ('Id is ' || customer_id ||' name is'|| '-' || customer_name);
x := x + 1;
IF x > 5 THEN
exit;
END IF;
END LOOP;
END;
/
