use test_university;

insert
	departments(name,
	address)
values ('Ingegneria',
'Piazza Leonardo da Vinci, Milano');

insert
	departments(name,
	address)
values ('Economia',
'Via Cavour, Milano');

insert
	`degrees`(name,
	email,
	`level`,
	website,
	departments_id)
values ('Laurea in Ingegneria Informatica',
'informatica@polimi.it',
'Triennale',
'ingegneria-informatica.polimi.it',
1);

insert
	`degrees`(name,
	email,
	`level`,
	website,
	departments_id)
values ('Laurea in Giurisprudenza',
'giurisprudenza@unimi.it',
'Triennale',
'ingegneria-informatica.unimi.it',
2);

update
	`degrees`
set
	website = 'giurisprudenza.unimi.it'
where
	name = 'Laurea in Giurisprudenza';

insert
	courses (name,
	website,
	cfu,
	degrees_id)
values ('Java developer',
'java-developer.polimi.it',
100,
1);

insert
	courses (name,
	website,
	cfu,
	degrees_id)
values ('Avogadro course',
'giurisprudenza.unimi.it',
150,
2);

insert
	teachers (name,
	surname,
	email,
	phone,
	office_address)
values ('Giorgio',
'Moblit',
'giorgiomoblit@gmail.com',
'3468951789',
'Via Daqualcheparte 45, 20100 Milano');

insert
	teachers (name,
	surname,
	email,
	phone,
	office_address)
values ('Eren',
'Jeager',
'jeagerista@gmail.com',
'3465198698',
'Corso Paradis 3, Liberio');

insert
	courses_teachers (courses_id,
	teachers_id)
values (1,
1);

insert
	courses_teachers (courses_id,
	teachers_id)
values (2,
2);

insert
	students (name,
	surname,
	date_of_birth,
	fiscal_code,
	enrolment_date,
	registration_number,
	email,
	degrees_id)
values ('Luca',
'Il Grande',
19960726,
'LGRLCU96L26I577R',
20211213,
1,
'lucailgrande@polimi.com',
1);

insert
	students (name,
	surname,
	date_of_birth,
	fiscal_code,
	enrolment_date,
	registration_number,
	email,
	degrees_id)
values ('Lollo',
'Radre',
19970115,
'LORRAD97L15I577R',
20200724,
2,
'loryrad@unimi.com',
2);

insert
	exams (`date`,
	`hour`,
	location,
	address,
	courses_id)
values ('20211213',
'20211213103409',
'Aula 1',
'Piazza Leonardo da Vinci 5, 20100 Milano',
1);

insert
	exams (`date`,
	`hour`,
	location,
	address,
	courses_id)
values ('20211116',
'20211116090000',
'Aula 14',
'Via Cavour 37b, 20100 Milano',
2);

insert
	vote (students_id,
	exams_id,
	vote)
values (1,
1,
26);

insert
	vote (students_id,
	exams_id,
	vote)
values (2,
2,
23);