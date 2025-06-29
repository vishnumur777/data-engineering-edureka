# Insurance Claims ETL & Analytics Project

This project implements a complete Big Data ETL pipeline for processing, cleaning, and analyzing historical insurance claims data to support fraud detection and pattern analysis using:

- HDFS for distributed raw data storage
- PySpark for transformation and cleaning
- Hive for structured, partitioned querying
- SparkSQL for analytical insights

---

Project Structure

project2-varun
 |
 |___ dag_insurance.py               airflow DAG configuration
 |___ hive_ddl_queries.hql           file to run hive ddl query ( table creation )
 |___ insclaim_analysis.ipynb        jupyter file to test our pipeline
 |___ insurance_claims.csv           dataset to analyse insurance claims
 |___ insclaim_analysis.py           spark application to run our analysis
 |___ run_pipelines.sh               pipeline to execute our application



Database Schema:

| Column Name                   | Description                                                                   |
| ----------------------------- | ----------------------------------------------------------------------------- |
| `months_as_customer`          | Number of months the customer has been with the company                       |
| `age`                         | Age of the customer                                                           |
| `policy_number`               | Unique policy identifier                                                      |
| `policy_state`                | U.S. state where the insurance policy was issued                              |
| `policy_csl`                  | Combined single limit coverage (e.g., 100/300 represents limits in thousands) |
| `policy_deductable`           | Deductible amount for the policy                                              |
| `policy_annual_premium`       | Annual premium charged for the insurance policy                               |
| `umbrella_limit`              | Additional liability coverage above standard policy limits                    |
| `insured_zip`                 | ZIP code of the insured individual                                            |
| `insured_sex`                 | Gender of the insured individual                                              |
| `insured_education_level`     | Education level of the insured                                                |
| `insured_occupation`          | Occupation of the insured individual                                          |
| `insured_hobbies`             | Hobbies of the insured (used for risk profiling)                              |
| `insured_relationship`        | Relationship status of the insured                                            |
| `capital_gains`               | Capital gains reported by the insured                                         |
| `capital_loss`                | Capital loss reported by the insured                                          |
| `incident_date`               | Date on which the incident occurred                                           |
| `incident_type`               | Type of incident (e.g., Single Vehicle Collision, Multi-vehicle Collision)    |
| `collision_type`              | Nature of the collision (e.g., Rear Collision, Side Collision)                |
| `incident_severity`           | Severity of the incident (e.g., Minor, Major Damage, Total Loss)              |
| `authorities_contacted`       | Authority contacted after the incident (e.g., Police, Other)                  |
| `incident_state`              | U.S. state where the incident occurred                                        |
| `incident_city`               | City where the incident occurred                                              |
| `incident_location`           | Full address of the incident                                                  |
| `incident_hour_of_the_day`    | Hour of the day the incident happened (0–23)                                  |
| `number_of_vehicles_involved` | Number of vehicles involved in the incident                                   |
| `property_damage`             | Indicates whether property damage occurred (YES/NO/UNKNOWN)                   |
| `bodily_injuries`             | Number of bodily injuries reported                                            |
| `witnesses`                   | Number of witnesses present during the incident                               |
| `police_report_available`     | Whether a police report was filed (YES/NO/UNKNOWN)                            |
| `total_claim_amount`          | Total amount claimed from the insurance company                               |
| `injury_claim`                | Amount claimed for bodily injuries                                            |
| `property_claim`              | Amount claimed for property damage                                            |
| `vehicle_claim`               | Amount claimed for vehicle damage                                             |
| `auto_make`                   | Manufacturer of the insured vehicle (e.g., Toyota, Ford)                      |
| `auto_model`                  | Model of the insured vehicle                                                  |
| `auto_year`                   | Year of manufacture of the insured vehicle                                    |
| `fraud_reported`              | Indicates whether the claim was flagged as fraudulent (Y/N)                   |


---

Run Entire Pipeline:

```bash
bash run_pipelines.sh
```