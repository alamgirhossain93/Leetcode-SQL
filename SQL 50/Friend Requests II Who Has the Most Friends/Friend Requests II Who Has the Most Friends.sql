SELECT   id, num
  FROM   (  SELECT   user_id id, COUNT (user_id) num
              FROM   (  SELECT   requester_id user_id FROM RequestAccepted
                      UNION ALL
                        SELECT   accepter_id user_id FROM RequestAccepted)
                     user_friend
          GROUP BY   user_id
          ORDER BY   num DESC)
 WHERE   ROWNUM = 1