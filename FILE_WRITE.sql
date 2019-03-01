set serveroutput on 
declare 
f utl_file.file_type;
cursor c is select * from customer;
begin
f:= utl_file.fopen('DATABASE','customer_update.csv','w');
utl_file.put(f,'id'||','||'name'||','||'add'||','||'crdit');
utl_file.new_line(f);
for c_record in c
loop
utl_file.put(f,c_record.id||','||c_record.name||','||c_record.add||','||c_record.credit);
end loop;
utl_file.fclose(f);
end;

/