drop database loldb;
create database loldb;
use loldb;

create table user
(
	uno int primary key AUTO_INCREMENT comment '회원번호',
	uid varchar(50) comment '아이디',
	upw varchar(50) comment '비밀번호',
	uname varchar(100) comment '이름',
	unickname varchar(100) comment '닉네임',
	upnum varchar(100) comment '휴대폰번호',
	umail varchar(200) comment '이메일',
	uretire varchar(5) default 'N' comment '탈퇴여부',
	uadmin varchar(5) default 'N' comment '관리자코드',
	udate datetime default now() comment '가입일자',
	umdate datetime comment '수정일자',
	umcheck varchar(5) default 'N' comment '메일동의',
	usmscheck varchar(5) default 'N' comment 'sms동의'
);

create table champion
(
	cpno int primary key AUTO_INCREMENT comment '챔피언번호',
	cpkname varchar(50) comment '한글이름',
	cpnickname varchar(100) comment '칭호',
	cpename varchar(100) comment '영어이름',
	cpbkimg varchar(100) comment '배경이미지',
	cpstdimg varchar(100) comment '기본이미지',
	cpinfo text comment '설명',
	cpstory text comment '스토리',
	cpdate DATETIME default now() comment '작성일자',
	cpmdate DATETIME comment '수정일자'
);

create table position
(
	cpno int comment '챔피언번호',
	pcode varchar(10) comment '포지션코드',
	pname varchar(50) comment '포지션명',
	foreign key (cpno) references champion(cpno)
);

create table review
(
	rno int primary key AUTO_INCREMENT comment '평가번호',
	uno int comment '회원번호',
	cpno int comment '챔피언번호',
	rnote DATETIME default now() comment '작성날짜',
	rmdate DATETIME comment '수정날짜',
	rscore int comment '챔피언평점',
	foreign key (uno) references user(uno),
	foreign key (cpno) references champion(cpno)
);