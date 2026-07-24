SHOW VARIABLES LIKE 'local_infile';
SELECT @@GLOBAL.local_infile;
SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';

## creation of database
create database HospitalER;
## using that database
use HospitalER;
## creating table 
CREATE TABLE er_data (
    Patient_Id VARCHAR(20) PRIMARY KEY,
    Admission_Date VARCHAR(25),
    Gender VARCHAR(10),
    Age INT,
    Race VARCHAR(50),
    Department VARCHAR(100),
    Admission_Flag VARCHAR(5),
    Satisfaction VARCHAR(10),
    Wait_time INT,
    Hour INT,
    Month Name VARCHAR(20),
    Month INT,
    Day Name VARCHAR(20),
    Year INT,
    weekend VARCHAR(10),
    Age_category VARCHAR(20)
);
## describing the table 
DESCRIBE er_data;
##loading data into table
LOAD DATA LOCAL INFILE 'C:/Users/User/OneDrive/Desktop/HospitalEmergencyRoomDashboard/Hospital_ER_Cleaned.csv'
INTO TABLE er_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
Patient_Id,
Admission_Date,
Gender,
Age,
Race,
Department,
Admission_Flag,
Satisfaction,
Wait_time,
Hour,
Month_Name,
Month,
Day_Name,
Year,
Weekend,
Age_Category
);
## counting the total number of data imported
SELECT COUNT(*) AS TotalRows
FROM er_data;
## checking if patient id is unique
SELECT COUNT(DISTINCT Patient_Id) AS UniquePatients
FROM er_data;

##total ER visits

select count(*) AS Total_ER_visits from er_data;

##admissions by year

select Year,count(*) AS Total_admissions from er_data 
group by year
order by year;
##Query 3: Admissions by Month
SELECT
    Year,
    Month,
    Month_Name,
    COUNT(*) AS Total_Admissions
FROM er_data
GROUP BY Year,Month,Month_Name
ORDER BY Year,Month;

##which day is busiest

SELECT Day_Name,
Count(*) AS Total_Admissions 
from er_data
group by Day_Name
order by Total_Admissions DESC;

##finding avg wait time
select round(avg(wait_time),2) AS Avg_waitTime from er_data;

##finding avg satisfaction
select round(avg(Satisfaction),2) AS Avg_Satisfaction 
from er_data
where Satisfaction is not null
and Satisfaction != '';

select Admission_date from er_data limit 5;
##adding new column to get date from admission date
alter table er_data 
add column AdmissionDate datetime;

update er_data
set AdmissionDate = 
str_to_date(Admission_date,'%d/%m/%Y %H:%i');
SELECT
DATE(AdmissionDate) AS Date,
COUNT(patient_id) As totalNoOfPatients
FROM er_data
GROUP BY DATE(AdmissionDate);
##patients admitted and discharged 
SELECT
    Admission_Flag,
    COUNT(*) AS Total_Patients
FROM er_data
GROUP BY Admission_Flag;
##department receiving high referrals
select department,count(*) as total_patients
from er_data
group by department
order by total_patients desc;

##avg waittime for each department
select department,round(avg(wait_time),2) as Avg_Wait
from er_data
group by department
order by Avg_wait desc;

##age category has highest number of er visits
select age_category,count(*)
from er_data 
group by age_category
order by count(*) desc;

##wait time for each age category
SELECT
Age_category,
ROUND(AVG(Wait_time),2) AS Avg_Wait_Time
FROM er_data
GROUP BY Age_category;