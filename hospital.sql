use school;

create table hospital(

patient_id int,
patient_name varchar(50),

patient_age int,

patient_diease varchar(50),

doctor_name varchar(50)
);

insert into hospital values(1,'eswar', 22, 'cancer', 'charan');

insert into hospital(patient_id, patient_name, patient_age, patient_diease) values (2,'eswar', 22, 'aids');

UPDATE hospital
SET doctor_name = 'Manohar'
WHERE patient_id = 2;
-- AND doctor_name IS NULL;

select*from hospital;

SET SQL_SAFE_UPDATES = 0;

-- SET SQL_SAFE_UPDATES = 1; here 1 means on, 0 mean off we can check wheather update opion is on/off if it is off we can update. 
-- if on means it is not possible.

SELECT @@SQL_SAFE_UPDATES;





