/*
Write PL/SQL block to accept a name from user & check number of characters in the name and print the name that many times on a seprate line.
*/

Declare
	name varchar2(20);
	len number(3);
	
Begin
	name := '&name';
	len := length(name);

	dbms_output.put_line('Number of characters in the String is :- ' || len);

	for i in 1..len
	loop
		dbms_output.put_line(name);
	end loop;
end;





