/*
Write a PL-SQL block to print name of employee having maximum salary.
*/

Declare 
	v_name emp.ename%type;
	v_sal emp.sal%type;

Begin
	select ename, sal into v_name, v_sal from emp where sal = (select max(sal) from emp);

	dbms_output.put_line(v_name || ' ' || v_sal);

end;