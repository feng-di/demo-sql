/************ FIxtures *************/
CREATE TABLE CUSTOMERS(
   ID   INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY   DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'kaushik', 23, 'Kota', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (6, 'Komal', 22, 'MP', 4500.00 );

/*********************
 * Control of condition
 ********************/
DECLARE
    a number(2) := 10;
BEGIN  
   a:= 10;
  -- check the boolean condition using if statement 
   IF( a < 20 ) THEN
      -- if condition is true then print the following  
      dbms_output.put_line('a is less than 20 ' );
   END IF;
   dbms_output.put_line('value of a is : ' || a);
END;
/

DECLARE
   a number(3) := 100;
BEGIN
   -- check the boolean condition using if statement 
   IF( a < 20 ) THEN
      -- if condition is true then print the following  
      dbms_output.put_line('a is less than 20 ' );
   ELSE
      dbms_output.put_line('a is not less than 20 ' );
   END IF;
   dbms_output.put_line('value of a is : ' || a);
END;
/

DECLARE
   grade char(1) := 'A';
BEGIN
   CASE grade
      when 'A' then dbms_output.put_line('Excellent');
      when 'B' then dbms_output.put_line('Very good');
      when 'C' then dbms_output.put_line('Well done');
      when 'D' then dbms_output.put_line('You passed');
      when 'F' then dbms_output.put_line('Better try again');
      else dbms_output.put_line('No such grade');
   END CASE;
END;
/

DECLARE
   grade char(1) := 'A';
BEGIN
   CASE grade
      when 'A' then dbms_output.put_line('Excellent');
      when 'B' then dbms_output.put_line('Very good');
      when 'C' then dbms_output.put_line('Well done');
      when 'D' then dbms_output.put_line('You passed');
      when 'F' then dbms_output.put_line('Better try again');
      else dbms_output.put_line('No such grade');
   END CASE;
END;
/

DECLARE
   a number(3) := 100;
   b number(3) := 200;
BEGIN
   -- check the boolean condition 
   IF( a = 100 ) THEN
   -- if condition is true then check the following 
      IF( b = 200 ) THEN
      -- if condition is true then print the following 
         dbms_output.put_line('Value of a is 100 and b is 200' );
      END IF;
   END IF;
   dbms_output.put_line('Exact value of a is : ' || a );
   dbms_output.put_line('Exact value of b is : ' || b );
END;
/

/********************************
 LOOPS 
*******************************/
DECLARE
   I NUMBER(1);
   j NUMBER(1);
BEGIN
   << outer_loopsfdfsdfsddlsjfdlsjfsdlj >>
   FOR i IN 1..3 LOOP
      << inner_loop >>
      FOR j IN 1..3 LOOP
         dbms_output.put_line('i is: '|| i || ' and j is: ' || j);
      END loop inner_loop;
   END loop outer_loop;
END;
/

DECLARE
   a number(2) := 10;
BEGIN
   -- while loop execution 
   WHILE a < 20 LOOP
      dbms_output.put_line ('value of a: ' || a);
      a := a + 1;
      IF a > 15 THEN
         -- terminate the loop using the exit statement
         EXIT;
      END IF;
   END LOOP;
END;
/

DECLARE
   a number(2) := 10;
BEGIN
   -- while loop execution 
   WHILE a < 20 LOOP
      dbms_output.put_line ('value of a: ' || a);
      a := a + 1;
      -- terminate the loop using the exit when statement
   EXIT WHEN a > 15;
   END LOOP;
END;  
/

DECLARE
   a number(2) := 10;
BEGIN
   -- while loop execution 
   WHILE a < 20 LOOP
      dbms_output.put_line ('value of a: ' || a);
      a := a + 1;
      IF a = 15 THEN
         -- skip the loop using the CONTINUE statement
         a := a + 1;
         CONTINUE;
      END IF;
   END LOOP;
END;
/

DECLARE
   a number(2) := 10;
BEGIN
   <<loopstart>>
   -- while loop execution 
   WHILE a < 20 LOOP
      dbms_output.put_line ('value of a: ' || a);
      a := a + 1;
      IF a = 15 THEN
         a := a + 1;
         GOTO loopstart;
      END IF;
   END LOOP;
END;
/

DECLARE
   x number := 10;
BEGIN
   LOOP
      dbms_output.put_line(x);
      x := x + 10;
      IF x > 50 THEN
         exit;
      END IF;
   END LOOP;
   -- after exit, control resumes here
   dbms_output.put_line('After Exit x is: ' || x);
END;
/

DECLARE
   a number(2) := 10;
BEGIN
   WHILE a < 20 LOOP
      dbms_output.put_line('value of a: ' || a);
      a := a + 1;
   END LOOP;
END;
/

DECLARE
   a number(2);
BEGIN
   FOR a in 10 .. 20 LOOP
       dbms_output.put_line('value of a: ' || a);
  END LOOP;
END;
/

DECLARE
   a number(2) ;
BEGIN
   FOR a IN REVERSE 10 .. 20 LOOP
      dbms_output.put_line('value of a: ' || a);
   END LOOP;
END;
/

DECLARE
   i number(3);
   j number(3);
BEGIN
   i := 2;
   LOOP
      J:= 2;
      LOOP
         EXIT WHEN ((MOD(I, J) = 0) OR (J = I));
         J := J +1;
      END LOOP;
   IF (J = I ) THEN
      DBMS_OUTPUT.PUT_LINE(I || ' is prime');
   END IF;
   I := I + 1;
   EXIT WHEN I = 50;
   END LOOP;
END;
/

/******************
** String
******************/
DECLARE
   greetings varchar2(11) := 'hello world';
BEGIN
   dbms_output.put_line(UPPER(greetings));
   
   dbms_output.put_line(LOWER(greetings));
   
   dbms_output.put_line(INITCAP(greetings));
   
   /* retrieve the first character in the string */
   dbms_output.put_line ( SUBSTR (greetings, 1, 1));
   
   /* retrieve the last character in the string */
   dbms_output.put_line ( SUBSTR (greetings, -1, 1));
   
   /* retrieve five characters, 
      starting from the seventh position. */
   dbms_output.put_line ( SUBSTR (greetings, 7, 5));
   
   /* retrieve the remainder of the string,
      starting from the second position. */
   dbms_output.put_line ( SUBSTR (greetings, 2));
   
   /* find the location of the first "e" */
   dbms_output.put_line ( INSTR (greetings, 'e'));
   dbms_output.put_line(ASCII('A'));
END;
/
/***************
VARRAY
***/
DECLARE
   type namesarray IS VARRAY(5) OF VARCHAR2(10);
   type grades IS VARRAY(5) OF INTEGER;
   names namesarray;
   marks grades;
   total integer;
BEGIN
   names := namesarray('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
   marks:= grades(98, 97, 78, 87, 92);
   total := names.count;
   dbms_output.put_line('Total '|| total || ' Students');
   FOR i in 1 .. total LOOP
      dbms_output.put_line('Student: ' || names(i) || '
      Marks: ' || marks(i));
   END LOOP;
END;
/

select * from customers;

DECLARE
   CURSOR c_customers is
   SELECT  name FROM customers;
   type c_list is varray (6) of customers.name%type;
   name_list c_list := c_list();
   counter integer :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter + 1;
      name_list.extend;
      name_list(counter)  := n.name;
      dbms_output.put_line('Customer('||counter ||'):'||name_list(counter));
   END LOOP;
END;
/

