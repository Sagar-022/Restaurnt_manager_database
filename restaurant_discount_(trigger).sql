create trigger discount before
insert on food
for each row when (new.restaurant_name='Kifeng')
begin
if: new.price>100 then
new.price:=new.price-new.price*.1;
end if;
end;

select * from food;