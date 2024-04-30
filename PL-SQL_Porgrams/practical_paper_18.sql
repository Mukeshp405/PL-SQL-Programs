/*
Accept 10 numbers in a loop and print sum of even numbers and odd numbers sepratly.
*/

Declare
	odd_sum number(4);
	even_sum number(4);

Begin
	odd_sum := 0;
	even_sum := 0;

	for i in 1..10
	loop
	if mod(i, 2) = 0 then
		even_sum := even_sum + i;
	else
		odd_sum := odd_sum + i;
	end if;

	end loop;

	dbms_output.put_line('Sum of Even number :- ' || even_sum);
	dbms_output.put_line('Sum of Odd number :- ' || odd_sum);
end;
/




