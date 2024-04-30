/*
Write a PL/SQL block to display empno, ename of employees working in deptno 20 (Using cursor).
*/

Declare
	-- Variable Declaration
	v_empno emp.empno%type;
	v_name emp.ename%type;
	
	-- Cursor Created
	cursor c1 is
	select empno, ename
	from emp
	where deptno = 20;

Begin
	-- Display the Heading
	dbms_output.put_line('--------------');
	dbms_output.put_line('Empno' || ' | ' || 'Ename');
	dbms_output.put_line('--------------');

	-- Cursor Opening
	open c1;

	-- Loop Declaration
	loop
		-- Fetching the data
		fetch c1 into v_empno, v_name;

		-- Exit if data not found
		exit when c1%notfound;
	
	-- Display the result
	dbms_output.put_line(v_empno || '  | ' || v_name);

	-- Ending Loop
	end loop;

	dbms_output.put_line('--------------');

	-- Closing Cursor	
	close c1;

-- Program ending.	
end;
/
