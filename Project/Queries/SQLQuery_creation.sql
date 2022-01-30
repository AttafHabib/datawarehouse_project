CREATE DATABASE fee_records;

use fee_records;

CREATE TABLE dues (
	dues_id int IDENTITY(1,1) PRIMARY KEY,
	dues_type varchar(20) NOT NULL,
	installment_no int NOT NULL,
	year int NOT NULL,
	debit int NOT NULL,
	credit int NOT NULL,
	description VARCHAR(50) DEFAULT NULL,
	due_date DATETIME NOT NULL)

CREATE TABLE fee_concession (
	fee_conc_id int IDENTITY(1,1) PRIMARY KEY,
	concession_type  varchar(20) NOT NULL,
	amount int DEFAULT NULL)

CREATE TABLE scholarship_dues (
	scholarship_dues_id int IDENTITY(1,1) PRIMARY KEY,
    amount int not null,
	scholarship_type varchar(50) not null,
	remarks varchar(50) default null
	)

CREATE TABLE refund(
    refund_id int IDENTITY(1,1) PRIMARY KEY,
	amount int not null,
	description varchar(50) default null,
	refund_type varchar(20) not null
	)

CREATE TABLE fee_ft (
dues_id int DEFAULT null,
concession_id int DEFAULT null,
scholarship_id int DEFAULT null,
refund_id int DEFAULT null,
time_id int DEFAULT null,
scholarship_sum int DEFAULT NULL,
refund_amount int DEFAULT NULL,
dues_amount int DEFAULT NULL,
concession_amount int DEFAULT NULL,
debit_amount int DEFAULT NULL,
credit_amount int DEFAULT NULL,
 foreign key(dues_id) references dues(dues_id),
 foreign key(concession_id) references fee_concession(fee_conc_id),
 foreign key(scholarship_id) references scholarship_dues(scholarship_dues_id),
 foreign key(refund_id) references refund(refund_id),
 foreign key(time_id) references time(id)
 );

 CREATE TABLE time(
    id int IDENTITY(1,1) PRIMARY KEY,
	year int default null,
	month int Default null,
	day int default null)