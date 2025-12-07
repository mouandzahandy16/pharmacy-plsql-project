CREATE OR REPLACE PROCEDURE add_medicine (
  p_name        VARCHAR2,
  p_category    VARCHAR2,
  p_supplier_id NUMBER,
  p_expiry      DATE,
  p_price       NUMBER
) AS
BEGIN
  INSERT INTO medicine
  VALUES (
    seq_medicine.NEXTVAL,
    p_name,
    p_category,
    p_supplier_id,
    p_expiry,
    p_price
  );
  COMMIT;
END;
/

CREATE OR REPLACE FUNCTION get_stock_qty (p_med_id NUMBER)
RETURN NUMBER IS
  v_qty NUMBER;
BEGIN
  SELECT quantity INTO v_qty
  FROM stock
  WHERE medicine_id = p_med_id;

  RETURN v_qty;
END;
/
