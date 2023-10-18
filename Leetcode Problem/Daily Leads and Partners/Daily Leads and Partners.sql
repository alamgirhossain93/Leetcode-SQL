SELECT 
   to_char(date_id, 'rrrr-mm-dd' ) date_id, make_name, 
    COUNT(DISTINCT lead_id)  unique_leads, 
    COUNT(DISTINCT partner_id) unique_partners 
FROM 
    DailySales 
GROUP BY 
    to_char(date_id, 'rrrr-mm-dd' ), make_name 
    order by 1;