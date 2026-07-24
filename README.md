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

