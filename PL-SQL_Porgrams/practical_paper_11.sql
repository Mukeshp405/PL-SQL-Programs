/*
Write a PL/SQL block to accept a number and print table of that number in descending order.
*/

Declare
	num number(3);

Begin
	num := &num;
	
	for i in reverse 1 .. 10
	loop
		dbms_output.put_line(num || ' * ' || i || ' ' || ' = ' || (num * i));

	end loop;
end;
/