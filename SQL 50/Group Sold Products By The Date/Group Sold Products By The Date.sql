SELECT TO_CHAR(sell_date, 'yyyy-mm-dd') AS sell_date,
    COUNT(DISTINCT(product)) AS num_sold, 
    LISTAGG(product, ',') WITHIN GROUP (ORDER BY product) AS products 
        FROM (SELECT DISTINCT sell_date, product FROM Activities) 
            GROUP BY sell_date