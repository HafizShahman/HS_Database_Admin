CREATE SMALLFILE TABLESPACE FADHILAH_JEWELLERY
DATAFILE
    'C:\oraclexe\app\oracle\oradata\XE\JEWELLERY.dbf' SIZE 200K
LOGGING
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLE HR.JEWELLERY_ITEM(
ITEM_CODE VARCHAR(10) NOT NULL PRIMARY KEY,
ITEM_NAME VARCHAR(50) NOT NULL,
QUANTITY NUMBER(3) NOT NULL
);

INSERT INTO HR.JEWELLERY_ITEM
(ITEM_CODE, ITEM_NAME, QUANTITY)
VALUES
('R10','RING',100);

INSERT INTO HR.JEWELLERY_ITEM
(ITEM_CODE, ITEM_NAME, QUANTITY)
VALUES
('R15','BRACELET',35);

INSERT INTO HR.JEWELLERY_ITEM
(ITEM_CODE, ITEM_NAME, QUANTITY)
VALUES
('N20','NECKLACE',20);

CREATE USER FADHILAH
IDENTIFIED BY Hafsha99
DEFAULT TABLESPACE FADHILAH_JEWELLERY
TEMPORARY TABLESPACE TEMP;

CREATE USER MAISARAH
IDENTIFIED BY Hafsha99
DEFAULT TABLESPACE FADHILAH_JEWELLERY
TEMPORARY TABLESPACE TEMP;


CREATE ROLE OWNER;
GRANT CREATE TABLE TO OWNER;
GRANT CREATE SESSION TO OWNER;
GRANT SELECT ON HR.JEWELLERY_ITEM TO OWNER;
GRANT INSERT ON HR.JEWELLERY_ITEM TO OWNER;
GRANT UPDATE ON HR.JEWELLERY_ITEM TO OWNER;
GRANT DELETE ON HR.JEWELLERY_ITEM TO OWNER;

GRANT OWNER TO FADHILAH;

CREATE ROLE STAFF;
GRANT CREATE SESSION TO STAFF;
GRANT SELECT ON HR.JEWELLERY_ITEM TO STAFF;

GRANT STAFF TO MAISARAH;

DROP ROLE STAFF;

DROP ROLE OWNER;

DROP USER MAISARAH;

DROP USER FADHILAH;

