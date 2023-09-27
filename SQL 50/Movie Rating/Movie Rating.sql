SELECT   name results
  FROM   (  SELECT   u.user_id, u.name, COUNT (DISTINCT movie_id) mv_cnt
              FROM      MovieRating m
                     INNER JOIN
                        Users u
                     ON u.user_id = m.user_id
          GROUP BY   u.user_id, u.name
          ORDER BY   mv_cnt DESC, u.name)
 WHERE   ROWNUM = 1
UNION ALL
SELECT   title results
  FROM   (  SELECT   m2.movie_id, m2.title, AVG (m1.rating) avg_rt
              FROM      MovieRating m1
                     INNER JOIN
                        Movies m2
                     ON m1.movie_id = m2.movie_id
             WHERE   TO_CHAR (m1.created_at, 'YYYY-MM') = '2020-02'
          GROUP BY   m2.movie_id, m2.title
          ORDER BY   avg_rt DESC, m2.title)
 WHERE   ROWNUM = 1