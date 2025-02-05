create table tbl_pizza_02(
	pcode char(4) primary key,
	name varchar2(30),
	cost number(7)
)
create table tbl_shop_02(
	scode char(4) primary key,
	sname varchar2(20)
)
create table tbl_salelist_02(
	saleno number(7) primary key,
	scode char(4) not null,
	saledate date,
	pcode char(4) not null,
	amount number(5)
)
insert into TBL_PIZZA_02 values ('AA01','고르곤졸라피자',6000);
insert into TBL_PIZZA_02 values ('AA02','치즈피자',6500);
insert into TBL_PIZZA_02 values ('AA03','페퍼로니피자',7000);
insert into TBL_PIZZA_02 values ('AA04','콤비네이션피자',7500);
insert into TBL_PIZZA_02 values ('AA05','고구마피자',6000);

INSERT INTO tbl_shop_02 VALUES ('S001','강남점');
INSERT INTO tbl_shop_02 VALUES ('S002','강서점');
INSERT INTO tbl_shop_02 VALUES ('S003','강동점');
INSERT INTO tbl_shop_02 VALUES ('S004','영동점');

INSERT INTO tbl_salelist_02 VALUES('100001','S001','2018-12-02', 'AA01',50);
INSERT INTO tbl_salelist_02 VALUES('100002','S002','2018-12-02', 'AA03',30);
INSERT INTO tbl_salelist_02 VALUES('100003','S002','2018-12-02', 'AA04',20);
INSERT INTO tbl_salelist_02 VALUES('100004','S001','2018-12-02', 'AA04',50);
INSERT INTO tbl_salelist_02 VALUES('100005','S004','2018-12-03', 'AA05',40);
INSERT INTO tbl_salelist_02 VALUES('100006','S004','2018-12-03', 'AA03',60);
INSERT INTO tbl_salelist_02 VALUES('100007','S003','2018-12-03', 'AA01',60);
INSERT INTO tbl_salelist_02 VALUES('100008','S004','2018-12-03', 'AA04',70);
INSERT INTO tbl_salelist_02 VALUES('100009','S003','2018-12-04', 'AA01',80);
INSERT INTO tbl_salelist_02 VALUES('100010','S003','2018-12-02', 'AA05',30);

SELECT * FROM TBL_PIZZA_02;
SELECT * FROM tbl_shop_02;


SELECT A.SALENO,A.SCODE||'-'||B.SNAME B 
FROM tbl_salelist_02 A JOIN tbl_shop_02 B ON A.SCODE=B.SCODE;

SELECT C.pcode, C.name, TO_CHAR(SUM(C.cost * B.amount), '999,999,999,999') cost
FROM tbl_shop_01 A, tbl_salelist_01 B, tbl_product_01 C
where A.scode = B.scode AND C.pcode = B.pcode
GROUP BY C.pcode, C.name
ORDER by 3 DESC;

SELECT A.SCODE
	 , A.SNAME
	 , TO_CHAR(SUM(C.COST * B.AMOUNT), '999,999,999,999') COST
FROM TBL_SHOP_01 A, TBL_SALELIST_01 B, TBL_PRODUCT_01 C
WHERE A.SCODE=B.SCODE AND C.PCODE =B.PCODE
GROUP BY A.SCODE, A.SNAME
ORDER BY 1;