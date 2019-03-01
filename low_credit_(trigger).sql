CREATE or replace TRIGGER bi_ord BEFORE 
INSERT ON order_logs
FOR EACH ROW
declare
c_cr_rating customer.credit_rating%type;
c_name customer.cname%type;
BEGIN
select credit_rating, cname into c_cr_rating, c_name from customer where cid = :new.customer_id;
if c_cr_rating = 'POOR' then
	DBMS_output.put_line('Hello ' || c_name || ', you have low balance, please recharge.');
end if;
END bi_ord;
/