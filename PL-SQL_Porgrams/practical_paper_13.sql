/*
Write a PL/SQL block to accept 10 numbers and print sum of even numbers.
*/

DECLARE
    v_sum_even NUMBER := 0;
BEGIN
    FOR i IN 1..10 LOOP
        DECLARE
            v_number NUMBER;
        BEGIN
            -- Accept input from the user
            DBMS_OUTPUT.PUT_line('Enter number ' || i || ': ');
            -- Read the input number
            v_number := &v_number;
            
            -- Check if the number is even
            IF MOD(v_number, 2) = 0 THEN
                v_sum_even := v_sum_even + v_number;
            END IF;
        END;
    END LOOP;
    
    -- Print the sum of even numbers
    DBMS_OUTPUT.PUT_LINE('Sum of even numbers: ' || v_sum_even);
END;




