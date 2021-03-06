

DROP TABLE CART_ITEM;

DROP TABLE CART;

CREATE TABLE CART(
ID NUMBER,
ORDER_ID VARCHAR2(100),
ADDRESS VARCHAR2(100),
CREATION_DATE TIMESTAMP,
UPDATED_DATE   TIMESTAMP,
PRIMARY KEY(ID)
);

CREATE TABLE CART_ITEM(
ID NUMBER,
CREATION_DATE TIMESTAMP,
UPDATED_DATE   TIMESTAMP,
NAME VARCHAR2(100),
DESCRIPTION VARCHAR2(255),
PRICE NUMBER(10,2),
QUANTITY NUMBER,
CART_ID NUMBER,
FOREIGN KEY(CART_ID) REFERENCES CART(ID),
PRIMARY KEY(ID)
);





