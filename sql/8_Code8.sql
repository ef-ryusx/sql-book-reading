-- ■リスト8.1 体重テーブルの定義
CREATE TABLE Weights
(student_id	CHAR(4) PRIMARY KEY,
 weight     INTEGER);

INSERT INTO Weights VALUES('A100',	50);
INSERT INTO Weights VALUES('A101',	55);
INSERT INTO Weights VALUES('A124',	55);
INSERT INTO Weights VALUES('B343',	60);
INSERT INTO Weights VALUES('B346',	72);
INSERT INTO Weights VALUES('C563',	72);
INSERT INTO Weights VALUES('C345',	72);

-- ■リスト8.4 体重テーブル2の定義
CREATE TABLE Weights2
(class      INTEGER NOT NULL,
 student_id CHAR(4) NOT NULL,
 weight INTEGER     NOT NULL,
 PRIMARY KEY(class, student_id));

INSERT INTO Weights2 VALUES(1, '100', 50);
INSERT INTO Weights2 VALUES(1, '101', 55);
INSERT INTO Weights2 VALUES(1, '102', 56);
INSERT INTO Weights2 VALUES(2, '100', 60);
INSERT INTO Weights2 VALUES(2, '101', 72);
INSERT INTO Weights2 VALUES(2, '102', 73);
INSERT INTO Weights2 VALUES(2, '103', 73);

-- ■リスト8.9 体重テーブル3（連番列を埋めたい）

CREATE TABLE Weights3
(class      INTEGER NOT NULL,
 student_id CHAR(4) NOT NULL,
 weight INTEGER     NOT NULL,
 seq    INTEGER     NULL,
     PRIMARY KEY(class, student_id));

INSERT INTO Weights3 VALUES(1, '100', 50, NULL);
INSERT INTO Weights3 VALUES(1, '101', 55, NULL);
INSERT INTO Weights3 VALUES(1, '102', 56, NULL);
INSERT INTO Weights3 VALUES(2, '100', 60, NULL);
INSERT INTO Weights3 VALUES(2, '101', 72, NULL);
INSERT INTO Weights3 VALUES(2, '102', 73, NULL);
INSERT INTO Weights3 VALUES(2, '103', 73, NULL);

/*
■リスト8.10 連番の更新（ROW_NUMBER）
UPDATE Weights3
   SET seq = (SELECT seq
                FROM (SELECT class, student_id,
                             ROW_NUMBER()
                               OVER (PARTITION BY class
                                         ORDER BY student_id) AS seq
                        FROM Weights3) SeqTbl
             -- SeqTblというサブクエリを作る必要がある
               WHERE Weights3.class = SeqTbl.class
                 AND Weights3.student_id = SeqTbl.student_id);

■リスト8.11 連番の更新（相関サブクエリ）
UPDATE Weights3
   SET seq = (SELECT COUNT(*)
                FROM Weights3 W2
               WHERE W2.class = Weights3.class
                 AND W2.student_id <= Weights3.student_id);
*/

-- ■リスト8.15 連番テーブルの定義
CREATE TABLE Numbers( num INTEGER PRIMARY KEY);

INSERT INTO Numbers VALUES(1);
INSERT INTO Numbers VALUES(3); 
INSERT INTO Numbers VALUES(4); 
INSERT INTO Numbers VALUES(7); 
INSERT INTO Numbers VALUES(8); 
INSERT INTO Numbers VALUES(9); 
INSERT INTO Numbers VALUES(12);

-- ■リスト8.21 シーケンスオブジェクトの定義の例
CREATE SEQUENCE testseq
START WITH 1
INCREMENT BY 1
MAXVALUE 100000
MINVALUE 1
CYCLE;

/*
■リスト8.24 サンプルデータ
DELETE FROM Weights;
INSERT INTO Weights VALUES('B346', 80);
INSERT INTO Weights VALUES('C563', 70);
INSERT INTO Weights VALUES('A100', 70);
INSERT INTO Weights VALUES('A124', 60);
INSERT INTO Weights VALUES('B343', 60);
INSERT INTO Weights VALUES('C345', 60);
*/