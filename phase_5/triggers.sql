CREATE OR REPLACE TRIGGER trg_update_stock_date
BEFORE UPDATE ON stock
FOR EACH ROW
BEGIN
  :NEW.last_updated := SYSDATE;
END;
/
