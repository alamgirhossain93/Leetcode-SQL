/* Write your PL/SQL query statement below */
  SELECT   DISTINCT a.product_id, COALESCE (b.new_price, 10) price
    FROM      Products a
           LEFT JOIN
              (SELECT   product_id,
                        RANK ()
                           OVER (PARTITION BY product_id
                                 ORDER BY change_date DESC)
                           prank,
                        new_price
                 FROM   Products
                WHERE   change_date <= '2019-08-16') b
           ON a.product_id = b.product_id AND b.prank = 1
ORDER BY   2 DESC;