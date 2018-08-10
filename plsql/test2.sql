DECLARE
   -- variable declaration
   message  varchar2(20):= 'Hello, World!';
   var_double DOUBLE PRECISION;
BEGIN
   /*
    *  PL/SQL executable statement(s)
    */
    dbms_output.put_line(message);
    
    SELECT * FROM accreditation;
END;
/
