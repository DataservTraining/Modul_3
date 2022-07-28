DROP SCHEMA  if exists 'OCP';
create Database OCP;

Use OCP;

create table Customer(
	CustomerId Integer primary key,
	FirstName varchar(30),
	LastName varchar(30),
	EMail varchar(40),
	Phone varchar(20));
	
create Table Author(
	AuthorId Integer primary key,
	FirstName varchar(30),
	LastName varchar(30));
	
create table Book (
	ISBN varchar(20) primary key,
	Title varchar(100),
	PubDate varchar(20),
	Format varchar(20),
	UnitPrice Double);
	
create table Books_By_Author(
	AuthorId Integer,
	ISBN varchar(20),
	constraint primary key  (AuthorId, ISBN),
	constraint FK_AuthorID foreign key (AuthorId) references Author(AuthorId),
	constraint FK_ISBN foreign key (ISBN) references Book(ISBN));
	
insert into Customer values (5000, 'John', 'Smith', 'john.smith@verizon.net', '555-340-1230');
insert into Customer values (5001, 'Mary', 'Johnson', 'mary.johnson@comcast.net', '555-123-4567');
insert into Customer values (5002, 'Bob', 'Collins', 'bob.collins@yahoo.com', '555-012-3456');
insert into Customer values (5003, 'Rebecca', 'Mayer', 'rebecca.mayer@gmail.com', '555-205-8212');
insert into Customer values (5006, 'Anthony', 'Clark', 'anthony.clark@gmail.com', '555-256-1901');
insert into Customer values (5007, 'Judy', 'Sousa', 'judy.sousa@verizon.net', '555-751-1207');
insert into Customer values (5008, 'Christopher', 'Patriquin', 'patriquinc@yahoo.com', '555-316-1803');
insert into Customer values (5009, 'Deborah', 'Smith', 'debsmith@comcast.net', '555-256-3421');
insert into Customer values (5010, 'Jennifer', 'McGinn', 'jmcginn@comcast.net', '555-250-0918');

insert into Book values ('142311338X', 'The Lost Hero (Heroes of Olympus, Book 1)', '2010-10-12', 'Hardcover', 10.95);
insert into Book values ('0689852223', 'The House of the Scorpion', '2002-01-01', 'Hardcover', 16.95);
insert into Book values ('0525423656', 'Crossed (Matched Trilogy, Book 2)', '2011-11-01', 'Hardcover', 12.95);
insert into Book values ('1423153627', 'The Kane Chronicles Survival Guide', '2012-03-01', 'Hardcover', 13.95);
insert into Book values ('0439371112', 'Howliday Inn', '2001-11-01', 'Paperback', 14.95);
insert into Book values ('0439861306', 'The Lightning Thief', '2006-03-12', 'Paperback', 11.95);
insert into Book values ('031673737X', 'How to Train Your Dragon', '2010-02-01', 'Hardcover', 10.95);
insert into Book values ('0545078059', 'The White Giraffe', '2008-05-01', 'Paperback', 6.95);
insert into Book values ('0803733428', 'The Last Leopard', '2009-03-05', 'Hardcover', 13.95);
insert into Book values ('9780545236', 'Freaky Monday', '2010-01-15', 'Paperback', 12.95);

insert into Author values (1000, 'Rick', 'Riordan');
insert into Author values (1001, 'Nancy', 'Farmer');
insert into Author values (1002, 'Ally', 'Condie');
insert into Author values (1003, 'Cressida', 'Cowell');
insert into Author values (1004, 'Lauren', 'St. John');
insert into Author values (1005, 'Eoin', 'Colfer');
insert into Author values (1006, 'Esther', 'Freisner');
insert into Author values (1007, 'Chris', 'Dlacey');
insert into Author values (1008, 'Mary', 'Rodgers');
insert into Author values (1009, 'Heather', 'Hatch');

insert into Books_By_Author values (1000, '142311338X');
insert into Books_By_Author values (1001, '0689852223');
insert into Books_By_Author values (1002, '0525423656');
insert into Books_By_Author values (1003, '1423153627');
insert into Books_By_Author values (1004, '0439371112');
insert into Books_By_Author values (1005, '0439861306');
insert into Books_By_Author values (1006, '031673737X');
insert into Books_By_Author values (1007, '0545078059');
insert into Books_By_Author values (1008, '0803733428');
insert into Books_By_Author values (1009, '9780545236');
