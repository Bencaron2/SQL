
use 310ben; 
set FOREIGN_KEY_CHECKS=0;

drop table owner; 
create table owner(
	id numeric unsigned primary key, 
    fName varchar(32) not NULL, 
    lName varchar(32) NOT NULL);
DESCRIBE owner;    

insert into owner values(123, 'Musa', 'Jafar');
insert into owner values(124, 'Henry', 'Smith');
select * from owner;

drop table pet; 
create table pet(
	id numeric unsigned PRIMARY KEY,
	name varchar(32) NOT NULL, 
	kind varchar(32) NOT NULL, 
	breed varchar(32),
	dob date, 
    ownerId numeric unsigned NOT NULL,
    Foreign Key(ownerId) references owner(id) on update cascade
);
       
DESCRIBE pet;
insert into pet values(1230, 'inky', 'dog', 'lab', '2005-12-01', 123); 
insert into pet values(1240, 'finky', 'dog', NULL, NULL, 123); 
select * from pet;


alter table owner
Add column email varchar(32) Not NULL,
Add column zip_code varchar(8);

describe owner;
insert into owner values(127, 'Jon', 'Caron', 'Jon@gmail.com','06562');
insert into owner values(128, 'Ben', 'Tardiff', 'bent@hotmail.com','03950');
insert into owner values(129, 'Carrie', 'Caron', 'ccaron@yahoo.com','03824');
insert into owner values(130, 'Jack', 'smith', 'jsmith2003@gmail.com','10012');
insert into owner values(131, 'tracy', 'kesler','keslertr@gmail.com', '10003');



alter table pet 
add column color varchar(32),
add column weight decimal(6,2);



insert into pet values(1231, 'Koda', 'dog', 'pitbull', '2005-12-01', 127,'brown',53.4);
insert into pet values(1232, 'Ken', 'dog', 'golden doodle', '2005-12-01', 129,'brown',65.7);
insert into pet values(1233, 'Oppie', 'dog', 'doodle', '2005-12-01', 123,'white',53.8);
insert into pet values(1234, 'Brad', 'dog', 'lab', '2022-01-08', 130,'brown',43.2);
insert into pet values(1235, 'Kyju', 'dog', 'shibahinu', '2005-12-01', 123,'tan',43.4);
insert into pet values(1236, 'zynny', 'dog', 'pitbull', '2019-08-24', 131,'tan',34.7);
insert into pet values(1237, 'Frosty', 'dog', 'lab', '2005-12-01', 123,'brown',53.4);
insert into pet values(1238, 'chuck', 'dog', 'shitsue', '2005-12-01', 128,'white',29.4);
insert into pet values(1239, 'daisy', 'dog', 'lab', '2005-12-01', 130,'tan',38.4);
insert into pet values(1247, 'drake', 'dog', 'chiuaua', '2009-09-30', 130,'brown',67.6);
insert into pet values(1241, 'salmon', 'dog', 'lab', '2012-03-15', 128,'brown',53.4);
insert into pet values(1242, 'buck', 'dog', 'husky', '2005-12-01', 123,'tan',103.5);
insert into pet values(1243, 'tacobe', 'dog', 'lab', '2013-01-30', 128,'white',67.4);
insert into pet values(1244, 'marchy', 'dog', 'doodle', '2005-12-01', 131,'black',53.4);
insert into pet values(1245, 'pasta', 'dog', 'lab', '2005-12-01', 123,'brown',67.4);
insert into pet values(1246, 'chollet', 'dog', 'pitbull', '2013-01-30', 131,'black',43.9);

select name, kind, breed, TIMESTAMPDIFF(YEAR, dob, now()) AS age from pet;
