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

----------------------------------------------------------------------------------
Column                    |  Data Type               | Description
----------------------------------------------------------------------------------
Patient Id                   Text                        unique patient identifier
Patient Admission Date       Date Time                    Date and time patient arrived ER
Patient First Initial        Text                        first name initial
Patient Last Name            Text                        patient last name
Patient Gender               Category (Text)             Gender (M/F)
Patient Age                  Integer                     age in years
Patient Race                 Category(Text)              ethnicity
Department Referral          Category(Text)              Specialist department referred
Patient Admission Flag       Boolean                     Admitted or Discharged
Patient Satisfaction Score   Integer                     rating 
Patient Waittime             Integer                     waiting time in minutes
Patient CM                   Binary(integer),             meaning yet to be confirmed(not available on original dataset)

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

