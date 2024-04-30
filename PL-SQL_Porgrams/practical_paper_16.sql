/*
Accept a number from user and check whether the number is palindrome number or not.
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
		ans := (ans * 10) + rem;
		num1 := num1 / 10;
	end loop;

	if num2 = ans then
		dbms_output.put_line(num2 || ' Number is palindrome');
	else
		dbms_output.put_line(num2 || ' Number is not palindrome');
	end if;

end;
/




