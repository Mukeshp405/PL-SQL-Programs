/*
Write a PL/SQL block to accept a numbers and print reverse of that number.
*/

Declare 
	num number(5);
	rem number(5);
	ans number(3);
Begin
	num := &num;
	ans := 0;

	while num > 0
	loop
		rem := mod(num, 10);
		ans := (ans * 10) + rem;
		num := floor(num / 10);
	end loop;
	
	dbms_output.put_line('Reverse Number is :- ' || ans);

end;
