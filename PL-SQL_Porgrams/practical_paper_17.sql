/*
Accpet two numbers from user and print table of numbers between that range.
*/

Declare
	num1 number(3);
	num2 number(3);
	
Begin
	num1 := &num1;
	num2 := &num2;

	for i in num1 .. num2
	loop
		for j in 1..10
		loop	
			dbms_output.put_line(i || ' X ' || j || ' = ' || (i * j));
		end loop;
	
	dbms_output.put_line('============');

	end loop;
end;
/






