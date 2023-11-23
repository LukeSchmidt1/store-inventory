create table Department(
dep_code    INTEGER not null unique,
dep_name    char(20)    not null,
dep_manager char(20)    not null,
dep_contact char (15)   not null,
primary key (dep_code));

create table Product (
p_code  INTEGER not null unique primary KEY,
v_code  INTEGER not null,
p_price REAL    not null,
p_name  char(20)    not null,
d_code  integer not null,
foreign key(d_code) references department(dep_code) on delete cascade,
foreign key (v_code) references Vendor(v_code) on delete cascade);

create table Vendor(
v_code  INTEGER not null unique,
v_address   char(20)    not null,
v_contact   char(15)    not null,
v_name      char(15)    not null,
primary key(v_code));

create table Customer(
c_code  INTEGER not null unique,
c_name  char(15)    not null,
c_address   char(20)    not null,
c_contact   char(20)    not null,
primary key(c_code));

create table stock(
s_code  INTEGER not null unique,
p_code  integer not null,
quantity    integer not NULL,
primary key(s_code),
foreign key (p_code) references Product(p_code) on delete CASCADE);

insert into Department values (1, "deli", "John smith", "132-456-5990");
insert into department values (2, "meat", "Luke Schmidt", "387-437-9381");
insert into department values (3, "grocery", "Eric Soto", "132-354-5768");
insert into department values (4, "seafood", "Jack Ryan", "102-394-5867");

insert into vendor values(1, "5634 W. Main Street", "678-456-1245", "deli Ven");
insert into vendor values(2, "1234 N. Jeff Street", "123-456-789", "meat Ven");
insert into vendor values(3, "3246 E. West Street", "234-573-0956", "grocery Ven");
insert into vendor values(4, "5325 N. Columbia Street", "235-654-3222", "seafood Ven");

insert into product values (1, 2, 14.99, "beef", 2);
insert into product values (2, 2, 20.99, "ribs", 2);
insert into product values (3, 1, 8.99, "Ham", 1);
insert into product values (4, 1, 8.99, "turkey", 1);
insert into product values (5, 3, 2.99, "cereal", 3);
insert into product values (6, 3, 3.99, "chips", 3);
insert into product values (7, 4, 15.99, "Sushi", 4);
insert into product values (8, 4, 14.99, "salmon", 4);

insert into customer values(1, "bob vance", "5461 W. Main Street", "143-568-9429");
insert into customer values(2, "Aaron Jones", "3245 N. Blvd", "437-527-9810");
insert into customer values(3, "Robert Clark", "5242 E. West Street", "254-425-542");

insert into stock values(1, 1, 5);
insert into stock values(2, 2, 30);
insert into stock values(3, 3, 15);
insert into stock values(4, 4, 20);
insert into stock values(5, 5, 34);
insert into stock values(6, 6, 21);
insert into stock values(7, 7, 10);
insert into stock values(8, 8, 4);