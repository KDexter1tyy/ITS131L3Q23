CREATE OR REPLACE PROCEDURE insert_customer (
    P_CUST_ID IN NUMBER,
    P_REG_ID IN NUMBER,
    P_CUST_NAME IN VARCHAR2,
    P_CUST_PHONE IN NUMBER
)

IS
BEGIN
    INSERT INTO customer (CUST_ID, REG_ID, CUST_NAME, CUST_PHONE)
    VALUES (P_CUST_ID, P_REG_ID, P_CUST_NAME, P_CUST_PHONE);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Customer ' || P_CUST_ID || ' inserted successfully.');
    
EXCEPTION
    WHEN OTHERS THEN ROLLBACK;
	DBMS_OUTPUT.PUT_LINE('Error inserting customer');
END;
