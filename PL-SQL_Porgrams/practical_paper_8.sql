/*
Write a PL/SQL block to display rollno, name, feespaid of student whose course is 'BCA' (Using cursor).
*/

Declare	
	v_rollno stud.rollno%type;
	v_name stud.name%type;
	v_feespaid stud.feespaid%type;
	
	cursor c1 is 
	select rollno, name, feespaid
	from stud
	where course = 'BCA';
	
Begin
	dbms_output.put_line('------------------------');
	dbms_output.put_line('Rollno' || ' | ' || 'Name' || ' | ' ||'Feespaid');
	dbms_output.put_line('------------------------');

	open c1;
	loop
		fetch c1 into v_rollno, v_name, v_feespaid;
		exit when c1%notfound;
	
		dbms_output.put_line(v_rollno || '  | ' || v_name || '  | ' || v_feespaid);
	end loop;
	
	dbms_output.put_line('------------------------');

	close c1;
end;
/