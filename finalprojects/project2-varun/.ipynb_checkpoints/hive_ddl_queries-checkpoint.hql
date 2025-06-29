use varunmdb;

create external table IF NOT EXISTS insurance_claim(
months_as_customer int  ,age int
,policy_number string 
,policy_state string , policy_csl string 
,policy_deductable int
,policy_annual_premium double 
,umbrella_limit int 
,insured_zip int 
,insured_sex string 
,insured_education_level string
,insured_occupation string 
,insured_hobbies string 
,insured_relationship string
,capital_gains double 
,capital_loss double 
,incident_date date
,incident_type string 
,collision_type string 
,incident_severity string 
,authorities_contacted string 
,incident_state string 
,incident_city string 
,incident_location string 
,incident_hour_of_the_day int 
,number_of_vehicles_involved int 
,property_damage string 
,bodily_injuries int 
,witnesses int  
,police_report_available string  
,total_claim_amount double 
,injury_claim double 
,property_claim double 
,vehicle_claim double 
,auto_make string
,auto_model string 
,auto_year int
,fraud_reported string )                                                                
PARTITIONED BY (incident_year int) 
STORED AS parquet 
location '/user/varunm15t38hedu/insurance/parquet/';
