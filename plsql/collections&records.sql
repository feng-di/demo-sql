DECLARE
   TYPE salary IS TABLE OF NUMBER INDEX BY VARCHAR2(20);
   salary_list salary;
   name   VARCHAR2(20);
BEGIN
   -- adding elements to the table
   salary_list('Rajnish')  := 62000;
   salary_list('Minakshi')  := 75000;
   salary_list('Martin') := 100000;
   salary_list('James') := 78000;

   -- printing the table
   name := salary_list.FIRST;
   WHILE name IS NOT null LOOP
      dbms_output.put_line
      ('Salary of ' || name || ' is ' || TO_CHAR(salary_list(name)));
      name := salary_list.NEXT(name);
   END LOOP;
END;
/


DECLARE
   CURSOR c_customers is
      select  name from customers;
   
   TYPE c_list IS TABLE of customers.name%type INDEX BY binary_integer;
   name_list c_list;
   counter integer :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter +1;
      name_list(counter)  := n.name;
      dbms_output.put_line('Customer('||counter|| '):'||name_list(counter));
  END LOOP;
END;
/

/**************
嵌套表
********************/
DECLARE
   TYPE names_table IS TABLE OF VARCHAR2(10);
   TYPE grades IS TABLE OF INTEGER;

   names names_table;
   marks grades;
   total integer;
BEGIN
   names := names_table('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
   marks:= grades(98, 97, 78, 87, 92);
   total := names.count;
   dbms_output.put_line('Total '|| total || ' Students');
   FOR i IN 1 .. total LOOP
      dbms_output.put_line('Student:'||names(i)||', Marks:' || marks(i));
   end loop;
END;
/

DECLARE
   CURSOR c_customers is 
      SELECT  name FROM customers;

   TYPE c_list IS TABLE of customers.name%type;
   name_list c_list := c_list();
   counter integer :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter +1;
      name_list.extend;
      name_list(counter)  := n.name;
      dbms_output.put_line('Customer('||counter||'):'||name_list(counter));
   END LOOP;
END;
/

-- collection methods
/**
1	EXISTS(n)
返回TRUE，如果一个集合中的第n个元素的存在;否则返回FALSE
2	COUNT
返回集合当前包含的元素数量
3	LIMIT
检查集合的最大尺寸
4	FIRST
返回在使用整数下标集合的第一个（最小的）索引号
5	LAST
返回在使用整数下标集合的最后一个（最大的）索引号
6	PRIOR(n)
返回集合中索引n前面的索引号
7	NEXT(n)
返回索引n的下一个索引号
8	EXTEND
追加1个空元素到集合
9	EXTEND(n)
追加n个空元素到集合
10	EXTEND(n,i)
追加的第i个元素的集合的n个拷贝
11	TRIM
移除集合的末尾一个元素
12	TRIM(n)
移除一个集合末尾的n个元素
13	DELETE
移除一个集合中的所有元素，设置计数为0
14	DELETE(n)
移除关联数组用数字键或嵌套表中的第n个元素。如果关联数组有一个字符串键，对应于该键的值的元素将被删除。如果n为空，DELETE（N）什么都不做
15	DELETE(m,n)
移除关联数组或嵌套表范围m..n所有元素。如果m大于n或如果m大于或n是零，DELETE（M，N）什么也不做
******************/

--------- collection exceptions 
--COLLECTION_IS_NULL	尝试在一个原子空(null)的集合操作
--NO_DATA_FOUND	下标指定被删除的元素，或关联数组的一个不存在的元素
--SUBSCRIPT_BEYOND_COUNT	下标超过了一个集合的元素数
--SUBSCRIPT_OUTSIDE_LIMIT	下标超出了允许的范围
--VALUE_ERROR	下标为空(null)或不可转换的键类型。如果该键被定义为PLS_INTEGER范围，下标是在该范围之外可能会出现这样的异常