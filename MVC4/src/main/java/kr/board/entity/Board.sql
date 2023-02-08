create table board(
	idx int not null auto_increment,
	title varchar(1000) not null,
	content varchar(3000) not null,
	writer varchar(1000) not null,
	indate datetime not null default now(),
	count int not null default 0,
	primary key(idx)
	
);

select * from board;

-- int 숫자형 타입
-- auto_increment : 자동으로 1씩 증가하면서 들어가는 키워드
-- (오라클에서는 시퀀스 생성)
-- datetime : 날짜를 담는 타입
-- default : 따로 값을 넣어주지 않아도 지정된 초기값이 들어감


-- Alt+X 로 해당 블록 부분 실행

insert into board(title, content, writer)
values('스프링 게시판','오늘 처음 써봅니다..','오지윤');

select * from member;

-- mysql workbench => sql developer와 비슷


create table member(
	memId varchar(50) not null,
	memPw varchar(50) not null,
	memName varchar(50) not null,
	primary key(memId)

);

insert into member values ("admin", "1234", "관리자");
insert into member values ("HH", "1234", "김현호");


-- board테이블에 회원 아이디 컬럼 추가
alter table board add memId varchar(50);

select * from board;




DELETE FROM member WHERE memId = "";
select * from image;


create table board(
	idx int not null auto_increment,
	title varchar(1000) not null,
	content varchar(3000) not null,
	writer varchar(1000) not null,
	indate datetime not null default now(),
	count int not null default 0,
	primary key(idx)
	
);





create table files(
	fno int not null auto_increment primary key,
	filename varchar(500) not null,
	fileOriName varchar(500) not null,
	fileurl varchar(500) not null);

drop table files;

ALTER TABLE board ADD memId VARCHAR(50) NOT NULL first;

select * from files;

show tables;

select * from member;
UPDATE member SET 
		memPw = '123',
		memName = '123'
		WHERE memId = 'kkk'

create table adminimg(
	fno int not null auto_increment primary key,
	Filedata varchar(500) not null,
	callback varchar(500) not null,
	callback_func varchar(500) not null);