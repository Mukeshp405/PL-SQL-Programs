/*
Write a PL-SQL block to Accept the number and check whether it is even or odd.
*/

Declare
	num number(3);

Begin
	num := &num;

	if mod(num, 2) = 0 then
		dbms_output.put_line('Number is Even');
	else
		dbms_output.put_line('Number is Odd');
	end if;

end;