/*
Write a Program using cursor print the name, salary and deptno of all employees who belongs to deptno 20.
*/


Declare 
	-- Creating the cursor
	cursor c1 is select ename, sal, deptno from emp where deptno = 20;

Begin 
	-- Using the for loop 	
	for i in c1
	loop
		-- Displaying the result
		dbms_output.put_line('Name :- ' || i.ename || ', Salary :-' || i.sal || ', Department number :- ' || i.deptno);
	
	-- Loop Ending
	end loop;

-- Ending Program.
end;

/*
	Another Method :-
	
Declare
		cursor c1 is select ename, sal, deptno from emp where deptno = 20;
	
		v_name emp.ename%type;
		v_sal emp.sal%type;
		v_deptno emp.deptno%type;

Begin
	open c1;
		Loop
			fetch c1 into v_name, v_sal, v_deptno;
			exit when c1%notfound;
		
		dbms_output.put_line('Name :- ' || v_name || ', Salary :-' || v_sal || 'Department number :- ' || v_deptno);
		end loop;
	close c1;	
end;	
	
*/