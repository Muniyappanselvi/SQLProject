create database BookDB;
use BookDB;
create table Bookss(id int primary key,title varchar(50),author varchar(20),genre varchar(20), publicationyear int,price int);
select *from Bookss;
insert into Bookss values(1,'Alice in Wonderland' ,'Lewis Carrol','science fiction',1865,200);
insert into Bookss values(2,'The Jungle Book','Rudyard Kipling ','childrens literature',1920,150);
insert into Bookss values(3,'The India Story','Bimal Jalal','Religion Mythology',2021,400);
insert into Bookss values(4,'Queen of Fire','Devika Rangachari','historical fiction',2021,150);
insert into Bookss values(5,'Utopia','Sir Thomas Moor','satire',1516,250);
ALTER TABLE Bookss modify column genre varchar(50);

select title,author from Bookss;
select *from Bookss where title='The Indian Story';
update Bookss set price=5000 where author='Bimal Jalal';
delete from Bookss where genre='satire';

select *from Bookss;
create table authors(authorid int,author varchar(20),authorage varchar(20),primary key(author));
insert into authors values(1,'Lewis Carrol',50);
insert into authors values(2,'Rudyard Kipling ',44);
insert into authors values(3,'Bimal Jalal',69);
select *from authors;
select Bookss.title,authors.author from Bookss,authors where Bookss.author=Authors.author;