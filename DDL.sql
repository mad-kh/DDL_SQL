CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
    product_name VARCHAR2(20) CONSTRAINT cons_product NOT NULL,
    Price NUMBER CONSTRAINT check_price CHECK (Price>0),
);


CREATE TABLE Orders(
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
    Product_id VARCHAR2(20),
    quantity NUMBER,
    total_amoutn NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES Customers (Customer_id),
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
);


CREATE TABLE Customers(
    Customer_id VARCHAR2(20),
    Customer_name VARCHAR2(20) CONSTRAINT cons_customer NOT NULL,
    Customer_Tel NUMBER,
    
);

Alter TABLE Product ADD Category VARCHAR2(20);
Alter TABLE Orders ADD OrderDate DATE(SYSDATE);
