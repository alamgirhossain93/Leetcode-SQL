 SELECT   *
    FROM   (SELECT   a.id, TO_CHAR (a.visit_date)  visit_date, a.people
              FROM   Stadium a
             WHERE       a.people >= 100
                     AND (a.id + 1) IN (SELECT   b.id
                                           FROM   Stadium b
                                          WHERE   b.people >= 100)
                     AND (a.id + 2) IN (SELECT   c.id
                                           FROM   Stadium c
                                          WHERE   c.people >= 100)
            UNION
            SELECT   a.id, TO_CHAR (a.visit_date) visit_date, a.people
              FROM   Stadium a
             WHERE       a.people >= 100
                     AND (a.id - 1) IN (SELECT   b.id
                                           FROM   Stadium b
                                          WHERE   b.people >= 100)
                     AND (a.id - 2) IN (SELECT   c.id
                                           FROM   Stadium c
                                          WHERE   c.people >= 100)
            UNION
            SELECT   a.id, TO_CHAR (a.visit_date)  visit_date, a.people
              FROM   Stadium a
             WHERE       a.people >= 100
                     AND (a.id - 1) IN (SELECT   b.id
                                           FROM   Stadium b
                                          WHERE   b.people >= 100)
                     AND (a.id + 1) IN (SELECT   c.id
                                           FROM   Stadium c
                                          WHERE   c.people >= 100))
ORDER BY   visit_date ;