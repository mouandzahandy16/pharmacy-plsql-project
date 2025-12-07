BEGIN
  add_medicine('TestMed', 'Test', 1, SYSDATE+200, 500);
END;
/

SELECT get_stock_qty(1) FROM dual;
