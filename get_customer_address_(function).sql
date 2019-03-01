create or replace FUNCTION get_complete_address(in_person_id IN integer) 
RETURN VARCHAR2
IS person_details VARCHAR2(130);

   BEGIN 

	  SELECT 'Name-'||person.cname||' Address-'|| person.address
      INTO person_details
      FROM customer person
      WHERE person.cid = in_person_id;
      RETURN(person_details); 

    END get_complete_address;
    
    
    
    
    
SELECT get_complete_address(10) AS "Person Address" FROM DUAL;
SET SERVEROUTPUT ON;
EXECUTE dbms_output.put_line(get_complete_address(0010));