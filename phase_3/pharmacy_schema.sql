
CREATE TABLE supplier (
    supplier_id NUMBER PRIMARY KEY,
    supplier_name VARCHAR2(100) NOT NULL,
    phone VARCHAR2(20),
    location VARCHAR2(100)
);


CREATE TABLE medicine (
    medicine_id NUMBER PRIMARY KEY,
    medicine_name VARCHAR2(100) NOT NULL,
    category VARCHAR2(50),
    supplier_id NUMBER,
    expiry_date DATE NOT NULL,
    unit_price NUMBER(10,2),
    CONSTRAINT fk_supplier FOREIGN KEY (supplier_id)
    REFERENCES supplier(supplier_id)
);


CREATE TABLE stock (
    stock_id NUMBER PRIMARY KEY,
    medicine_id NUMBER UNIQUE,
    quantity NUMBER DEFAULT 0,
    last_updated DATE DEFAULT SYSDATE,
    CONSTRAINT fk_medicine_stock FOREIGN KEY (medicine_id)
    REFERENCES medicine(medicine_id)
);


CREATE TABLE user_account (
    user_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100),
    role VARCHAR2(20),
    username VARCHAR2(50) UNIQUE,
    password VARCHAR2(100)
);


CREATE TABLE sale (
    sale_id NUMBER PRIMARY KEY,
    medicine_id NUMBER,
    user_id NUMBER,
    quantity_sold NUMBER,
    sale_date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_medicine_sale FOREIGN KEY (medicine_id)
    REFERENCES medicine(medicine_id),
    CONSTRAINT fk_user_sale FOREIGN KEY (user_id)
    REFERENCES user_account(user_id)
);
