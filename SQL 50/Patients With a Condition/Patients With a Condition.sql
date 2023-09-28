SELECT patient_id , patient_name , conditions   
from Patients 
where  CONCAT(' ', conditions) LIKE '% DIAB1%'