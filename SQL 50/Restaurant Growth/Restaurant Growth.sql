 SELECT   TO_CHAR (visited_on, 'yyyy-mm-dd') visited_on,
           prev_sum AS amount,
           ROUND (prev_sum / 7, 2) AS average_amount
    FROM   (SELECT   visited_on,
                     SUM(amount)
                        OVER (ORDER BY visited_on
                              RANGE BETWEEN 6 PRECEDING AND CURRENT ROW)
                        AS prev_sum
              FROM   Customer) c
   WHERE   visited_on >= (  SELECT   MIN (visited_on) + 6 FROM Customer)
GROUP BY   visited_on, prev_sum, ROUND (prev_sum / 7, 2)
ORDER BY   visited_on;