# Hospital-Emergency-Room-Dashboard

## Project Overview

This project analyses the Hospital Emergency Dataset to uncover insights into patient visits, admissions, waiting times, department referrals, demographics, and operational trends. The data was cleaned using Excel Power Query and analysed using MySQL, and visualized with an interactive Power BI Dashboard.

## Acknowledgements

This project utilizes the following dataset hosted on Kaggle:
* **Dataset Name:** Hospital Emergency Dataset
* **Created by:** [Xavier Berge](https://www.kaggle.com/xavierberge)
* **Source:** [Kaggle Dataset Link](https://www.kaggle.com/datasets/xavierberge/hospital-emergency-dataset)
* **Description:** A comprehensive dataset compiling patient information from a hospital emergency room (ER) dashboard, ideal for analytics regarding patient demographics and operational efficiency.

*Thank you to the author for compiling and sharing this data publicly.*

## 📌 Project Objectives 
The objective of this project is to :
* Analyse patient trends over time
* Measure Emergency room admissions
* Evaluate the patient waiting time
* Understand the patient demographics
* Identify department referrals
* Build an interactive dashboard for healthcare decision-making


## 🛠️Tools and Technologies

* Excel(PowerQuery) ---- Data Cleaning and Transformation
* MySQL             ---- Data Analysis
* Power BI          ---- Dashboard and Visualisation
* GitHub            ---- Project Documentation


## Dataset Information

| Column Name | Data Type | Description |
|------------|-----------|-------------|
| **Patient ID** | Text | Unique patient identifier. |
| **Patient Admission Date** | Date & Time | Date and time the patient arrived at the Emergency Room. |
| **Patient First Initial** | Text | First name initial of the patient. |
| **Patient Last Name** | Text | Patient's last name. |
| **Patient Gender** | Category (Text) | Patient's gender (Male/Female). |
| **Patient Age** | Integer | Patient age in years. |
| **Patient Race** | Category (Text) | Patient's race/ethnicity. |
| **Department Referral** | Category (Text) | Specialist department to which the patient was referred. |
| **Patient Admission Flag** | Boolean | Indicates whether the patient was **Admitted** or **Discharged**. |
| **Patient Satisfaction Score** | Integer | Patient satisfaction rating. |
| **Patient Wait Time** | Integer | Waiting time in minutes before receiving treatment. |
| **Patient CM** | Binary (Integer) | Column available in the dataset, but its meaning is not documented in the original dataset. Therefore, it was excluded from the analysis. |

## 🧹Data Cleaning

The following cleaning steps were performed using Excel Power Query:
* Verified that Patient ID contained unique values (no duplicate records found)
* Checked for missing or inconsistent Values.
* Verified and corrected data types where required
* Created Age category for demographic analysis
* Created Weekday/Weekend classification
* Extracted date and time attributes:
      * Year
      * Month
      * Month Name
      * Day Name
      * Hour
Age Categories ->

| Age Group | Business Meaning |
| --------- | ---------------- |
| 0–18      | Children         |
| 19–35     | Young Adults     |
| 36–50     | Adults           |
| 51–65     | Middle-aged      |
| 66+       | Seniors          |


  
## 📖 Data Dictionary
| Column         | Description                             |
| -------------- | --------------------------------------- |
| Patient_ID     | Unique identifier for each ER visit     |
| Admission_Date | Date and time of ER visit               |
| Gender         | Patient gender                          |
| Age            | Patient age                             |
| Race           | Patient race                            |
| Department     | Department referred                     |
| Admission_Flag | Indicates whether patient was admitted  |
| Satisfaction   | Patient satisfaction score (0–10)       |
| Wait_Time      | Waiting time before treatment (minutes) |
| Year           | Extracted from Admission Date           |
| Month_Name     | Extracted from Admission Date           |
| Month_Number   | Month number used for sorting           |
| Day_Name       | Day of the week                         |
| Hour           | Hour of patient arrival                 |
| Weekend        | Weekend or Weekday                      |
| Age_Group      | Grouped patient ages                    |

## Business Questions
  * Total number of patients
  * How many patients were admitted
  * Average wait time going rate
  * Which department has the most referrals
  * Is wait time consistent with age?
  * Which time of day is busiest?


## SQL Analysis
The following questions were answered using MySQL
  ## Patient Analysis
   * Total Patients
   * Total Admissions
   * Admission Rate
   * Average Wait Time
   * Average Satisfaction Score
 ## Time Analysis
   * Monthly Patient Trend
   * Patients by Day of Week
   * Patients by Hour
   * Weekday vs Weekend Visits

 ## Demographic Analysis
   * Patients by Age Category
   * Patients by Gender
   * Patients by Race
 ## Department Analysis
   * Department Referral Distribution
   * Average Wait Time by Department

## Dashboard Pages
   ## Page 1 — Executive Overview
     Displays:
          * Total Patients
          * Total Admissions
          * Admission Rate
          * Average Wait Time
          * Average Satisfaction Score
          * Monthly Patient Trend
          * Admissions Distribution
          * Department Referrals

   ## Page 2 — Patient Demographics
     Displays:
          * Patients by Gender
          * Patients by Race
          * Patients by Age Category
          * Weekend vs Weekday Visits
          * Average Wait Time by Gender
          * Satisfaction Distribution
   ## Page 3 - Operational Analysis
    Displays
          * Hourly Patient Heatmap
          * Patients by Hour
          * Patients by Day of Week
          * Average Wait Time by Department
          * Average Wait Time by Age Category

## Dashboard Preview
 ## Page 1
 <img width="1445" height="812" alt="hospitalEROverviewDashboard" src="https://github.com/user-attachments/assets/212a4635-1521-417c-813b-e63da188c552" />
 ## Page 2
<img width="1446" height="807" alt="patientDemographicDashboard2" src="https://github.com/user-attachments/assets/43df6e45-1657-4472-b842-fec301c6ef22" />
 ## Page 3
<img width="1442" height="806" alt="OperationalDashboard3" src="https://github.com/user-attachments/assets/2f15505c-8029-4731-af70-75a1efab7f4e" />


## Key Insights
* Over 9216 patients visited the Emergency Room.
* Approximately 50% of patients were admitted
* The average wait time was found to be 35 mins.
* Out of the satisfaction rates data, we got 4.9 was the rating. 
* The General Practice Department had received high referrals
* The patient flow has increased from 5k in the year 2023 to 9k total in year 2024.
* Weekdays had more patients than on weekends.
* Among all the patients, White race people were a major category
* And the Children category had more patients in the ER Room
* The wait time relation with age category we could see older adults had less wait time comparatively
* In both years, on Saturday we had a high number of patients    
* And on the heat map, we could see nighttime had more patients, so Friday and Saturday night shifts needed more staff.


## Skills Demonstrated 
* Data Cleaning
* Data Transformation
* SQL Querying
* Business Analysis
* Data Visualization
* Dashboard Design
* KPI Development
* Power BI
* Excel Power Query
* MySQL

## Contact
  ## Merlin George
   * LinkedIn - www.linkedin.com/in/george-merlin
