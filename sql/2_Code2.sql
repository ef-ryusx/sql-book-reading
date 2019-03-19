--■「図2.1::住所テーブルのサンプル」を作成

CREATE TABLE Address
(name       VARCHAR(32) NOT NULL,
 phone_nbr  VARCHAR(32) ,
 address    VARCHAR(32) NOT NULL,
 sex        CHAR(4) NOT NULL,
 age        INTEGER NOT NULL,
 PRIMARY KEY (name));

INSERT INTO Address VALUES('小川',	'080-3333-XXXX',	'東京都',	'男',	30);
INSERT INTO Address VALUES('前田',	'090-0000-XXXX',	'東京都',	'女',	21);
INSERT INTO Address VALUES('森',	'090-2984-XXXX',	'東京都',	'男',	45);
INSERT INTO Address VALUES('林',	'080-3333-XXXX',	'福島県',	'男',	32);
INSERT INTO Address VALUES('井上',	NULL,	            	'福島県',	'女',	55);
INSERT INTO Address VALUES('佐々木',	'080-5848-XXXX',	'千葉県',	'女',	19);
INSERT INTO Address VALUES('松本',	NULL,	            	'千葉県',	'女',	20);
INSERT INTO Address VALUES('佐藤',	'090-1922-XXXX',	'三重県',	'女',	25);
INSERT INTO Address VALUES('鈴木',	'090-0001-XXXX',	'和歌山県',	'男',	32);

-- ■「図2.7::Address2テーブル」を作成

CREATE TABLE Address2
(name       VARCHAR(32) NOT NULL,
 phone_nbr  VARCHAR(32) ,
 address    VARCHAR(32) NOT NULL,
 sex        CHAR(4) NOT NULL,
 age        INTEGER NOT NULL,
 PRIMARY KEY (name));

INSERT INTO Address2 VALUES('小川',	'080-3333-XXXX',	'東京都',	'男',	30);
INSERT INTO Address2 VALUES('林',	'080-3333-XXXX',	'福島県',	'男',	32);
INSERT INTO Address2 VALUES('武田',	NULL,			'福島県',	'男',	18);
INSERT INTO Address2 VALUES('斉藤',	'080-2367-XXXX',	'千葉県',	'女',	19);
INSERT INTO Address2 VALUES('上野',	NULL,			'千葉県',	'女',	20);
INSERT INTO Address2 VALUES('広田',	'090-0205-XXXX',	'三重県',	'男',	25);

-- ■リスト2.30 小川さんをAddressテーブルに追加
/*
INSERT INTO Address (name, phone_nbr, address, sex, age)
             VALUES ('小川', '080-3333-XXXX', '東京都', '男', 30);


■リスト2.31 9行を一度に追加する
INSERT INTO Address (name, phone_nbr, address, sex, age)
              VALUES('小川', '080-3333-XXXX', '東京都', '男', 30),
                    ('前田', '090-0000-XXXX', '東京都', '女', 21),
                    ('森', '090-2984-XXXX', '東京都', '男', 45),
                    ('林', '080-3333-XXXX', '福島県', '男', 32),
                    ('井上', NULL, '福島県', '女', 55),
                    ('佐々木', '080-5848-XXXX', '千葉県', '女', 19),
                    ('松本', NULL, '千葉県', '女', 20),
                    ('佐藤', '090-1922-XXXX', '三重県', '女', 25),
                    ('鈴木', '090-0001-XXXX', '和歌山県', '男', 32);

■リスト2.32 Addressテーブルのデータを削除
DELETE FROM Address;

■リスト2.33 一部のレコードだけを削除
DELETE FROM Address
 WHERE address = '千葉県';

■リスト2.35 佐々木さんの電話番号を更新
UPDATE Address
   SET phone_nbr = '080-5849-XXXX'
 WHERE name = '佐々木';

■リスト2.37 UPDATE文を2回実行して更新する
UPDATE Address
   SET phone_nbr = '080-5848-XXXX'
 WHERE name = '佐々木';

UPDATE Address
   SET age = 20
 WHERE name = '佐々木';

■リスト2.38 1つのUPDATE文にまとめて更新する
--1.列をカンマ区切りで並べる
UPDATE Address
   SET phone_nbr = '080-5848-XXXX',
       age = 20
 WHERE name = '佐々木';

--2.列を括弧で囲むことによるリスト表現
UPDATE Address
   SET (phone_nbr, age) = ('080-5848-XXXX', 20)
 WHERE name = '佐々木';
*/