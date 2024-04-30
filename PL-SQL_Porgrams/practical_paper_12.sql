/*
Write a PL/SQL block to display rollno, name, feespaid of student living in 'Pune'. (Using cursor)
*/

Declare
	v_rollno student.rollno%type;
	v_name student.firstname%type;
	v_city student.city%type;

	cursor c1 is
	select rollno, firstname, city
	from student
	where city = 'pune';

Begin
	dbms_output.put_line('----------------------');
	dbms_output.put_line('rollno' || ' | ' || 'name' || ' | ' || 'city');
	dbms_output.put_line('----------------------');
	open c1;
	loop
		fetch c1 into v_rollno, v_name, v_city;
		exit when c1%notfound;

	dbms_output.put_line(v_rollno || '    | ' || v_name || ' | ' || v_city);
	end loop;

	dbms_output.put_line('----------------------');	
	
	close c1;
end;
/


