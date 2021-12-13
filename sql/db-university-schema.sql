create database test_university;

use test_university;

create table departments (
	id int not null auto_increment,
	name varchar(100) not null,
	address varchar(255) not null,
	primary key(id)
);

create table `degrees` (
	id int not null auto_increment,
	name varchar(255) not null,
	email varchar(100),
	`level` varchar(100),
	departments_id int not null,
	website varchar(255),
	primary key (id),
	foreign key (departments_id) references departments(id)
);

create table students (
	id int not null auto_increment,
	name varchar(50) not null,
	surname varchar(100) not null,
	date_of_birth date not null,
	fiscal_code char(16) not null,
	enrolment_date date not null,
	registration_number int not null,
	email varchar(255) not null,
	degrees_id int not null,
	primary key (id),
	foreign key (degrees_id) references `degrees`(id)
);

create table courses (
	id int not null auto_increment,
	name varchar(100) not null,
	website varchar(255) not null,
	cfu int not null,
	degrees_id int not null,
	primary key (id),
	foreign key (degrees_id) references `degrees`(id)
);

create table teachers (
	id int not null auto_increment,
	name varchar(50) not null,
	surname varchar(100) not null,
	email varchar(100) not null,
	phone varchar(10),
	office_address varchar(255) not null,
	primary key (id)
);

create table courses_teachers (
	courses_id int not null,
	teachers_id int not null,
	primary key (courses_id,
teachers_id),
	foreign key (courses_id) references courses(id),
	foreign key (teachers_id) references teachers(id)
);

create table exams (
	id int not null auto_increment,
	`date` date not null,
	`hour` datetime not null,
	location varchar(100),
	address varchar(255),
	courses_id int not null,
	primary key (id),
	foreign key (courses_id) references courses(id)
);

create table vote (
	students_id int not null,
	exams_id int not null,
	vote int not null,
	primary key (students_id,
exams_id),
	foreign key (students_id) references students(id),
	foreign key (exams_id) references exams(id)
);