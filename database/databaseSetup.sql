drop table if exists login;
drop table if exists reimbursement;
drop table if exists employee;


create table employee(
	employee_id int primary key generated always as identity,
	first_name varchar(50),
	last_name varchar(50),
	role_id int
	);
	
create table reimbursement(
	re_id int primary key generated always as identity,
	e_id int,
	amount float,
	status varchar(50),
	reason varchar(200),
	constraint fk_reburse_employee foreign key (e_id) references employee(employee_id)
);

create table login(
	user_name varchar(50) unique,
	pass_word varchar(50),
	e_id int primary key,
	constraint fk_login_employee foreign key (e_id) references employee(employee_id)
	
);

insert into employee values(default, 'Maya', 'Siren', 1);
insert into employee values(default, 'Salvador', 'Gunzerker', 1);
insert into employee values(default, 'Axton', 'Engineer', 1);
insert into employee values(default, 'Zero', 'Number', 1);
insert into employee values(default, 'Handsome', 'Jack', 0);

insert into login values ('maya', 'siren', 1);
insert into login values ('salvador', 'gunzerker', 2);
insert into login values ('axton', 'engineer', 3);
insert into login values ('zero', 'number', 4);
insert into login values ('handsome', 'jack', 5);

insert into reimbursement values (default, 1, 1500, 'Pending', 'disintegration by anxty teen' );
insert into reimbursement values (default, 2, 3000, 'Pending', 'Death by too many bullets');
insert into reimbursement  values (default, 3, 5000, 'Pending', 'Turret nuke malfunction');
insert into reimbursement values (default, 4, 100, 'Pending', 'Respawned with the incorrect number of limbs');