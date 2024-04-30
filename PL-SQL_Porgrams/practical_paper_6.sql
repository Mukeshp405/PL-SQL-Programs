/*
Using cursor pirnt information of customer having product name as 'pendrive'.
*/

Declare 
	-- Variable declaration
	vcid customer.cust_id%type;
	vname customer.cust_name%type;
	vpid customer.prod_id%type;
	vcity customer.city%type;
	vnumber customer.mobile_no%type;
	vdate customer.date_of_purchase%type;

	-- Cursor Declaration
	cursor c1 is
	select c.cust_id, c.cust_name, c.prod_id, c.city, c.mobile_no, c.date_of_purchase
	from customer c
	join product p on c.prod_id = p.prod_id
	where p.prod_name = 'pendrive';

Begin	
	
	dbms_output.put_line('----------------------------');
	
	-- Opening cursor
	open c1;

	-- Loop Declaration
	loop
		-- Fetching the data
		fetch c1 into vcid, vname, vpid, vcity, vnumber, vdate;

		-- When to exit
		exit when c1%notfound;
	
	-- Print the fetched data
	dbms_output.put_line('Cusotmer Id :- ' || vcid);
	dbms_output.put_line('Customer name :- ' || vname);
	dbms_output.put_line('Product Id :- ' || vpid);
	dbms_output.put_line('City :- ' || vcity);
	dbms_output.put_line('Mobile Number :- ' || vnumber);
	dbms_output.put_line('Date :- ' || vdate);

	-- Ending loop
	end loop;

	dbms_output.put_line('----------------------------');
	
	-- Closing Cursor
	close c1;
end;
