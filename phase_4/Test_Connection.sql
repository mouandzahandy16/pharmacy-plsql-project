CREATE TABLE test_phase4 (
  id NUMBER PRIMARY KEY,
  msg VARCHAR2(50)
);


INSERT INTO test_phase4 VALUES (1, 'PHASE IV SUCCESS');
COMMIT;

SELECT * FROM test_phase4;