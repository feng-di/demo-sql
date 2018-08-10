DECLARE
   c_id customers.id%type := 8;
   c_name  customers.name%type;
   c_addr customers.address%type;
BEGIN
   SELECT  name, address INTO  c_name, c_addr
   FROM customers
   WHERE id = c_id;

   DBMS_OUTPUT.PUT_LINE ('Name: '||  c_name);
   DBMS_OUTPUT.PUT_LINE ('Address: ' || c_addr);
EXCEPTION
   WHEN no_data_found THEN
      dbms_output.put_line('No such customer!');
   WHEN others THEN
      dbms_output.put_line('Error!');
END;
/

/************* Define exception *****************/
DECLARE
   exception_name EXCEPTION;
BEGIN
   IF TRUE THEN
      RAISE exception_name;
   END IF;
EXCEPTION
   WHEN exception_name THEN
    dbms_output.put_line('Error!');
END;

/***************/
DECLARE
   c_id customers.id%type := &cc_id;
   c_name  customers.name%type;
   c_addr customers.address%type;
   
   ex_invalid_id  EXCEPTION;
BEGIN
   IF c_id <= 0 THEN
      RAISE ex_invalid_id;
   ELSE
      SELECT  name, address INTO  c_name, c_addr
      FROM customers
      WHERE id = c_id;
	  
      DBMS_OUTPUT.PUT_LINE ('Name: '||  c_name);
      DBMS_OUTPUT.PUT_LINE ('Address: ' || c_addr);
   END IF;
EXCEPTION
   WHEN ex_invalid_id THEN
      dbms_output.put_line('ID must be greater than zero!');
   WHEN no_data_found THEN
      dbms_output.put_line('No such customer!');
   WHEN others THEN
      dbms_output.put_line('Error!'); 
END;
/
/************ Predefined exceptions *****************/
--ACCESS_INTO_NULL	06530	-6530	当一个空对象会自动分配一个值引发此异常
--CASE_NOT_FOUND	06592	-6592	当没有任何选择，在当选择一个CASE语句的子句，并且没有ELSE子句时被引发
--COLLECTION_IS_NULL	06531	-6531	当程序试图申请其他收集方法不是存在未初始化的嵌套表或VARRAY，或程序试图值分配给未初始化的嵌套表或变长数组的元素时被引发
--DUP_VAL_ON_INDEX	00001	-1	当重复值试图被存储在具有唯一索引的列时被引发
--INVALID_CURSOR	01001	-1001	当尝试以使这是不允许的，如关闭一个未打开的游标的游标操作时被引发
--INVALID_NUMBER	01722	-1722	当一个字符的字符串转换成一个数失败，因为字符串不表示一个有效的数据被引发
--LOGIN_DENIED	01017	-1017	当程序试图登录到数据库使用无效的用户名或密码被引发
--NO_DATA_FOUND	01403	+100	它被引发当一个SELECT INTO语句无任何行返回
--NOT_LOGGED_ON	01012	-1012	在不连接到数据库发出数据库调用它被引发
--PROGRAM_ERROR	06501	-6501	它被引发当PL/SQL有一个内部问题
--ROWTYPE_MISMATCH	06504	-6504	当游标取值有不兼容的数据类型的变量被引发
--SELF_IS_NULL	30625	-30625	它被引发，当对象的成员方法被调用，但对象类型的实例没有被初始化。
--STORAGE_ERROR	06500	-6500	它被引发当PL/SQL内存不足或内存已损坏
--TOO_MANY_ROWS	01422	-1422	它被引发当SELECT INTO语句返回多行
--VALUE_ERROR	06502	-6502	当算术，转换，截短，或大小约束错误时引发
--ZERO_DIVIDE	01476	1476	它被引发当一个数试图除以零。