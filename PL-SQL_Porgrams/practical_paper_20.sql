/*
Write a PL/SQL block to accept number from user and check whether the number is armstrong number or not.
*/

Declare
	num1 number(3);
	num2 number(3);
	rem number(3);
	ans number(3);

Begin
	num1 := &num1;
	num2 := num1;
	ans := 0;

	while num1 > 0
	loop
		rem := mod(num1, 10);
		ans := ans + (rem * rem);
		num1 := num1 / 10;
	end loop;

	if num2 = ans then
		dbms_output.put_line(num2 || ' is Armstrong number');
	else
		dbms_output.put_line(num2 || ' is not Armstrong number');
	end if;

end;
/

