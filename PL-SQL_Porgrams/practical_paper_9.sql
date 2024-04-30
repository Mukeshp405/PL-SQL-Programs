/*
write a PL/SQL block to accept a number and print sum of digits of that number.
*/

Declare
	num number(5);
	digit number(5);
	ans number(5);

Begin
	num := &num;
	ans := 0;

	while num > 0
	loop
		digit := mod(num, 10);
		ans := ans + digit;
		num := num / 10;
	end loop;

	dbms_output.put_line('The sum of digits is :- ' || ans);

end;
/