/*
Write a PL-SQL block to print the factorial of the number.
*/

Declare 
	num number(3);
	fact number(3);

Begin
	num := 5;
	fact := 1;

	for i in 1..num
	loop
		fact := fact * i;
	end loop;
	
	dbms_output.put_line('Factorial is :- ' || fact);

end;