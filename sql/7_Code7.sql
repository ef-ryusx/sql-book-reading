CREATE TABLE Receipts
(cust_id   CHAR(1) NOT NULL, 
 seq   INTEGER NOT NULL, 
 price   INTEGER NOT NULL, 
     PRIMARY KEY (cust_id, seq));

INSERT INTO Receipts VALUES ('A',   1   ,500    );
INSERT INTO Receipts VALUES ('A',   2   ,1000   );
INSERT INTO Receipts VALUES ('A',   3   ,700    );
INSERT INTO Receipts VALUES ('B',   5   ,100    );
INSERT INTO Receipts VALUES ('B',   6   ,5000   );
INSERT INTO Receipts VALUES ('B',   7   ,300    );
INSERT INTO Receipts VALUES ('B',   9   ,200    );
INSERT INTO Receipts VALUES ('B',   12  ,1000   );
INSERT INTO Receipts VALUES ('C',   10  ,600    );
INSERT INTO Receipts VALUES ('C',   20  ,100    );
INSERT INTO Receipts VALUES ('C',   45  ,200    );
INSERT INTO Receipts VALUES ('C',   70  ,50     );
INSERT INTO Receipts VALUES ('D',   3   ,2000   );

CREATE TABLE Companies
(co_cd      CHAR(3) NOT NULL, 
 district   CHAR(1) NOT NULL, 
     CONSTRAINT pk_Companies PRIMARY KEY (co_cd));

INSERT INTO Companies VALUES('001',	'A');	
INSERT INTO Companies VALUES('002',	'B');	
INSERT INTO Companies VALUES('003',	'C');	
INSERT INTO Companies VALUES('004',	'D');	

CREATE TABLE Shops2
(co_cd      CHAR(3) NOT NULL, 
 shop_id    CHAR(3) NOT NULL, 
 emp_nbr    INTEGER NOT NULL, 
 main_flg   CHAR(1) NOT NULL, 
     PRIMARY KEY (co_cd, shop_id));

INSERT INTO Shops2 VALUES('001',	'1',   300,  'Y');
INSERT INTO Shops2 VALUES('001',	'2',   400,  'N');
INSERT INTO Shops2 VALUES('001',	'3',   250,  'Y');
INSERT INTO Shops2 VALUES('002',	'1',   100,  'Y');
INSERT INTO Shops2 VALUES('002',	'2',    20,  'N');
INSERT INTO Shops2 VALUES('003',	'1',   400,  'Y');
INSERT INTO Shops2 VALUES('003',	'2',   500,  'Y');
INSERT INTO Shops2 VALUES('003',	'3',   300,  'N');
INSERT INTO Shops2 VALUES('003',	'4',   200,  'Y');
INSERT INTO Shops2 VALUES('004',	'1',   999,  'Y');