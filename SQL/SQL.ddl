create table Book
	(ISBN		varchar(15),
	 genre		varchar(15),
	 pages		numeric(3,0),
	 year		numeric(4,0),
	 price		numeric(4,2),
	 publisher_percentage numeric(2,0),
	 stock_quantity, quantity_sold
	 primary key (ISBN)
	);

create table Publisher
	(dept_name		varchar(20), 
	 building		varchar(15), 
	 budget		        numeric(12,2),
	 primary key (dept_name)
	);

create table Author
	(course_id		varchar(8), 
	 title			varchar(50), 
	 dept_name		varchar(20),
	 credits		numeric(2,0),
	 primary key (course_id),
	 foreign key (dept_name) references department
	);

create table Customer
	(ID			varchar(5), 
	 name			varchar(20), 
	 dept_name		varchar(20), 
	 salary			numeric(8,2),
	 primary key (ID),
	 foreign key (dept_name) references department
	);

create table Order
	(course_id		varchar(8), 
         sec_id			varchar(8),
	 semester		varchar(6), 
	 year			numeric(4,0), 
	 building		varchar(15),
	 room_number		varchar(7),
	 time_slot_id		varchar(4),
	 primary key (course_id, sec_id, semester, year),
	 foreign key (course_id) references course,
	 foreign key (building, room_number) references classroom
	);

create table Billing_info
	(ID			varchar(5), 
	 course_id		varchar(8),
	 sec_id			varchar(8), 
	 semester		varchar(6),
	 year			numeric(4,0),
	 primary key (ID, course_id, sec_id, semester, year),
	 foreign key (course_id,sec_id, semester, year) references section,
	 foreign key (ID) references instructor
	);

create table Shipping_info
	(ID			varchar(5), 
	 name			varchar(20), 
	 dept_name		varchar(20), 
	 tot_cred		numeric(3,0),
	 primary key (ID),
	 foreign key (dept_name) references department
	);


