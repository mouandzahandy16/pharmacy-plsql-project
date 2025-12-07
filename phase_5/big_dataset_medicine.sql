BEGIN
  FOR i IN 3..124 LOOP
    INSERT INTO medicine
    (medicine_id, medicine_name, category, supplier_id, expiry_date, unit_price)
    VALUES
    (
      seq_medicine.NEXTVAL,
      'Medicine_' || i,
      CASE 
        WHEN MOD(i,3)=0 THEN 'Antibiotic'
        WHEN MOD(i,3)=1 THEN 'Painkiller'
        ELSE 'Vitamin'
      END,
      TRUNC(DBMS_RANDOM.VALUE(1, 4)),
      SYSDATE + TRUNC(DBMS_RANDOM.VALUE(200, 1200)),
      TRUNC(DBMS_RANDOM.VALUE(300, 5000))
    );
  END LOOP;

  COMMIT;
END;
/


BEGIN
  FOR rec IN (SELECT medicine_id FROM medicine) LOOP
    INSERT INTO stock
    (stock_id, medicine_id, quantity, last_updated)
    VALUES
    (
      seq_stock.NEXTVAL,
      rec.medicine_id,
      TRUNC(DBMS_RANDOM.VALUE(20, 300)),
      SYSDATE - TRUNC(DBMS_RANDOM.VALUE(0, 10))
    );
  END LOOP;

  COMMIT;
END;
/


BEGIN
  FOR i IN 1..80 LOOP
    INSERT INTO sale
    (sale_id, medicine_id, user_id, quantity_sold, sale_date)
    VALUES
    (
      seq_sale.NEXTVAL,
      (SELECT medicine_id FROM medicine
       ORDER BY DBMS_RANDOM.VALUE
       FETCH FIRST 1 ROW ONLY),
      (SELECT user_id FROM user_account
       ORDER BY DBMS_RANDOM.VALUE
       FETCH FIRST 1 ROW ONLY),
      TRUNC(DBMS_RANDOM.VALUE(1, 25)),
      SYSDATE - TRUNC(DBMS_RANDOM.VALUE(1, 60))
    );
  END LOOP;

  COMMIT;
END;
/
