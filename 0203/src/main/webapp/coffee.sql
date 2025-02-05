
select a.saleno, a.pcode, a.saledate, a.scode, a.amount, to_char(a.amount*b.cost,'FM9,999,999')
from tbl_salelist_01 a INNER join tbl_product_01 b on a.pcode=b.pcode;

SELECT a.scode, 
       c.sname, 
       TO_CHAR(SUM(a.amount * b.cost), 'FM9,999,999') AS total_cost
FROM tbl_salelist_01 a
INNER JOIN tbl_product_01 b ON a.pcode = b.pcode
INNER JOIN tbl_shop_01 c ON a.scode = c.scode
GROUP BY a.scode, c.sname
order by 1;

SELECT a.pcode, 
       b.name, 
       TO_CHAR(SUM(a.amount * b.cost), 'FM9,999,999') AS total_cost
FROM tbl_salelist_01 a
INNER JOIN tbl_product_01 b ON a.pcode = b.pcode
INNER JOIN tbl_shop_01 c ON a.scode = c.scode
GROUP BY a.pcode, b.name
order by 1;

create table tbl_product_01(
	pcode varchar2(10) primary key,
	name varchar2(20),
	cost number(10)
);
create table tbl_shop_01(
	scode varchar2(10) primary key,
	sname varchar2(20)
);
create table tbl_salelist_01(
	saleno number(10) primary key,
	pcode varchar2(10) not null,
	saledate date,
	scode varchar2(10) not null,
	amount number(10)
);

insert into tbl_product_01(pcode, name, cost) values ('AA01', '아메리카노',3000);
insert into tbl_product_01(pcode, name, cost) values ('AA02', '에스프레소',3500);
insert into tbl_product_01(pcode, name, cost) values ('AA03', '카페라떼',4000);
insert into tbl_product_01(pcode, name, cost) values ('AA04', '카라멜마끼',4500);
insert into tbl_product_01(pcode, name, cost) values ('AA05', '카푸치노',5000);
insert into tbl_product_01(pcode, name, cost) values ('AA06', '초코롤케익',6000);
insert into tbl_product_01(pcode, name, cost) values ('AA07', '녹차롤케익',6500);
insert into tbl_product_01(pcode, name, cost) values ('AA08', '망고쥬스',7000);
insert into tbl_product_01(pcode, name, cost) values ('AA09', '핫초코',2500);

insert into tbl_shop_01(scode, sname) values ('S001','강남점');
insert into tbl_shop_01(scode, sname) values ('S002','강서점');
insert into tbl_shop_01(scode, sname) values ('S003','강동점');
insert into tbl_shop_01(scode, sname) values ('S004','강북점');
insert into tbl_shop_01(scode, sname) values ('S005','동대문점');
insert into tbl_shop_01(scode, sname) values ('S006','인천점');

insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100001, 'AA01','20180902','S001',50);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100002, 'AA03','20180902','S002',40);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100003, 'AA04','20180902','S002',20);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100004, 'AA04','20180902','S001',30);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100005, 'AA05','20180902','S004',40);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100006, 'AA03','20180902','S004',30);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100007, 'AA01','20180902','S003',40);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100008, 'AA04','20180902','S004',10);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100009, 'AA01','20180902','S003',20);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100010, 'AA05','20180902','S003',30);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100011, 'AA01','20180902','S001',40);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100012, 'AA03','20180902','S002',50);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100013, 'AA04','20180902','S002',50);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100014, 'AA05','20180902','S004',20);
insert into tbl_salelist_01(saleno, pcode, saledate, scode, amount) values (100015, 'AA01','20180902','S003',30);
