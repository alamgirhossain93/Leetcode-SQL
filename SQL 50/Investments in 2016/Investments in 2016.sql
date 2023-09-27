SELECT ROUND(SUM(tiv_2016), 2) tiv_2016 
FROM  Insurance a
where 1 = (select count(lat ||'#'|| lon) from Insurance b
            where b.lat = a.lat
            and a.lon = b.lon)
            and 1< (select count(tiv_2015) from Insurance c
            where c.tiv_2015 = a.tiv_2015)