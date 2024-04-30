/*
Write a PL-SQL block to print the number of employees joined in the month of December.
*/

Declare
	v_count number;

Begin
	select count(*) into v_count from emp where to_char(hiredate, 'mm') = 12;


	dbms_output.put_line('The number of employees is :- ' || v_count);

end;
	