CREATE TABLE book(
	num int(4) NOT NULL,
	title varchar(50) NOT NULL,
	author varchar(30) NOT NULL,
	company varchar(50) NOT NULL,
	isbn varchar(30) NOT NULL,
	count int(30) NOT NULL,
	primary key(num)
);

select * from book;

insert into book values(1, "스프링", "홍길동", "삼성", "1234567", 12);
insert into book values(2, "링프스", "동길홍", "성삼", "7654321", 21);
