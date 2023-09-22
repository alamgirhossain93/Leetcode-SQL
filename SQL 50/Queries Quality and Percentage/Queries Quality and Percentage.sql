WITH QueryRatings AS (
    SELECT
        query_name,
        AVG(rating / CAST(position AS NUMBER)) AS quality,
        ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS poor_query_percentage
    FROM
        Queries
    GROUP BY
        query_name
)

SELECT
    query_name,
    ROUND(quality, 2) AS quality,
    poor_query_percentage
FROM
    QueryRatings