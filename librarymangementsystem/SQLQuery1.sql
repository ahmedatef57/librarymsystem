CREATE DATABASE library;
use library;
CREATE TABLE student (
    idstudent int ,
    name varchar(45),
   grander varchar(45)
);
CREATE TABLE borrows (
    idborrows int ,
	 idstudent int ,
	  idbooks int ,
    databrought varchar(45),
   datareceve varchar(45)
);
CREATE TABLE books (
    idbooks int ,
    name varchar(45),
	 idauther int ,
   cost varchar(45)
);
CREATE TABLE auther (
    idauther int ,
    name varchar(45),
	
);
insert into auther values(1,'ahmed');
insert into auther values(2,'ali');
insert into auther values(3,'mona');
insert into auther values(4,'zike');
insert into auther values(5,'khaled');

select * from auther;
insert into student values(1,'ali','m');
insert into student values(2,'alaa','f');
insert into student values(3,'sara','f');
insert into student values(4,'eman','f');
insert into student values(5,'mohamed','m');
select * from student;
update student set name= 'azaa' where idstudent=2;
update student set name= 'ahmed' where idstudent=1;
update student set name= 'eman' where idstudent=3;
update student set name= 'shimaa' where idstudent=4;
update student set name= 'karem' where idstudent=5;
select * from student;
delete from auther where idauther=5;
delete from auther where idauther=4;
delete from auther where idauther=3;
delete from auther where idauther=2;
delete from auther where idauther=1;

select * from auther;
select * from books;
insert into books values(1,'it',500,1);
insert into books values(2,'farma',100,2);
insert into books values(3,'history',5500,3);
insert into books values(4,'computerlaw',5200,4);
insert into books values(5,'informaionsystme',6500,5);
SELECT 
  books.idauther, books.name , books.cost
FROM
    books
WHERE
   cost  = (SELECT MAX(books.cost) FROM books);
 SELECT 
  books.idauther, books.name , books.cost
FROM
   books
WHERE
   cost  = (SELECT Min(books.cost) FROM books); 
SELECT 
  books.idauther, books.name , books.cost
FROM
    books
WHERE
   idbooks not in   (SELECT distinct idbooks FROM auther);
 SELECT 
  books.idauther, books.name , books.cost
FROM
    books
WHERE
   idbooks  in   (SELECT distinct idbooks FROM auther);
SELECT books.name ,COUNT(*)
FROM books     
GROUP BY books.name;
SELECT name ,COUNT(*)
FROM student     
GROUP BY student.name;
SELECT books.idauther, books.name 
FROM books
INNER JOIN auther ON auther.idauther=auther.idauther;
SELECT books.idauther, books.name 
FROM ((books
INNER JOIN auther ON auther.idauther=auther.idauther)
INNER JOIN borrows ON borrows.idstudent = borrows.idstudent);

