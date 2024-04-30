/*
Accept a String and a character from user and check how many times that character present in that string.
*/

Declare
	str varchar2(20);
	ch char(1);
	len number(3);
	cnt number(3);

Begin
	str := '&str';
	ch := '&ch';
	len := length(str);
	cnt := 0;

	dbms_output.put_line('Stirng is :- ' || str);
	dbms_output.put_line('Character is :- ' || ch);

	for i in 1 .. len
	loop
		if ch = substr(str, i, 1) then
			cnt := cnt + 1;
		end if;
	end loop;
	
	dbms_output.put_line(ch || ' occurs ' || cnt || ' times ' || 'in the string ' || str);

end;
/

