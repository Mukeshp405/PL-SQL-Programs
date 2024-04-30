/*
o
or
ora
orac
oracl
oracle
*/

Declare
	str varchar2(20);
	len number(3);

Begin
	str := '&str';
	len := length(str);

	for i in 1..len
	loop
		dbms_output.put_line(substr(str, 1, i));
	end loop;
end;
/




