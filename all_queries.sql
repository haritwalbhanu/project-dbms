-- Find 3 hospitals with most oxygen beds available
select name, oxygen_beds_available 
from hospitals
order by oxygen_beds_available desc
limit 3;

-- Find 5 hospitals with most icu beds available
select name, icu_beds_available 
from hospitals
order by icu_beds_available desc
limit 5;

-- Find number of patient with 5 covid sev
select count(id)
from patients 
where covid_sev = 5;

-- Find hospital with max number of patients
select hospital_id, count(hospital_id) as 'patient_count'
from patient_reports
group by hospital_id
order by patient_count desc
limit 1;

-- Find number of patients died with severity 1
select count(patient_id)
from patient_reports
inner join patients on patient_id = patients.id
where is_fatal = 1 and covid_sev = 1;

-- 5 hospitals with most fatality
select hospitals.name, count(patient_reports.id) as 'total_fatal'
from patient_reports
inner join hospitals on hospital_id = hospitals.id
where is_fatal = 1
group by hospitals.name
order by total_fatal desc
limit 5;

-- To get the distance between two point, 
-- using simply |a1-a2| + |b1-b2| (meaning, absolute sum)
-- 5 hospitals with max 40 distance with (25,38)
select name, (abs(25-loc_x)+abs(38-loc_y)) as 'distance'
from hospitals
where (abs(25-loc_x)+abs(38-loc_y)) <= 40
order by distance
limit 5;

-- To get the distance between two point, 
-- using simply |a1-a2| + |b1-b2| (meaning, absolute sum)
-- nearest hospital with max 20 distance with (41,75) and max icu beds
select name, (abs(41-loc_x)+abs(75-loc_y)) as 'distance', icu_beds_available
from hospitals
where (abs(41-loc_x)+abs(75-loc_y)) <= 40
order by icu_beds_available desc
limit 1;

-- Insert into hospitals table
insert into hospitals (id, name, loc_x, loc_y, oxygen_beds_available, icu_beds_available)
values (51, 'hospital51', 0, 0, 5, 5);

-- Update row of hospitals table
update hospitals
set loc_x = 1, loc_y = 1
where id = 51;

-- delete row from hospitals table
delete from hospitals where id  = 51;

