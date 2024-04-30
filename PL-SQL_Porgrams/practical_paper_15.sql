/*
Accept a name from user and print each character on seprate line.
*/

Declare
	name varchar2(20);
	len number(3);

Begin
	name := '&name';
	len := length(name);

	for i in 1..len
	loop
		dbms_output.put_line(substr(name, i, 1));
	end loop;
end;
/





