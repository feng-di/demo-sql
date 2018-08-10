SELECT TO_CHAR(CURRENT_DATE, 'DD-MM-YYYY HH:MI:SS') FROM DUAL;

SELECT LOCALTIMESTAMP FROM DUAL;

/***
1	NUMTODSINTERVAL(x, interval_unit);
整数x转换为一个间隔（DAY TO SECOND）
2	NUMTOYMINTERVAL(x, interval_unit);
x到时间间隔（YEAR TO MONTH）数的转换
3	TO_DSINTERVAL(x);
将字符串x时间间隔（DAY TO SECOND）到秒转换
4	TO_YMINTERVAL(x);
将字符串x时间间隔（YEAR TO MONTH）转换为整数
***/
SELECT NUMTODSINTERVAL(10, 'day') FROM DUAL;


DECLARE
   lines dbms_output.chararr;
   num_lines number;
BEGIN
   -- enable the buffer with default size 20000
   dbms_output.enable;
  
   dbms_output.put_line('Hello Reader!');
   dbms_output.put_line('Hope you have enjoyed the tutorials!');
   dbms_output.put_line('Have a great time exploring pl/sql!');
 
   num_lines := 3;
 
   dbms_output.get_lines(lines, num_lines);
 
   FOR i IN 1..num_lines LOOP
      dbms_output.put_line(lines(i));
   END LOOP;
END;
/