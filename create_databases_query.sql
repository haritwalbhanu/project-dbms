create table hospitals(
id int, name varchar(20), loc_x int, loc_y int, oxygen_beds_available int, icu_beds_available int
); -- To create hospitals table

create table patients(
id int, name varchar(20), loc_x int, loc_y int, covid_sev int
); -- To create patients table

create table patient_reports(
id int, patient_id int, hospital_id int, is_fatal int
); -- To patient_reports table

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\hospitals.csv'
into table hospitals
fields terminated by ','
lines terminated by '\n'; -- To load data into hospitals table

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\patients.csv'
into table patients
fields terminated by ','
lines terminated by '\n'; -- To load data into patients table

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\patient_reports.csv'
into table patient_reports
fields terminated by ','
lines terminated by '\n'; -- To load data into patient_reports table



