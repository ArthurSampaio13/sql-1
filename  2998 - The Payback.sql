SELECT 
    * 
FROM (
    SELECT 
        t1.name, 
        t1.investment, 
        CEILING(t1.investment / NULLIF(AVG(t2.profit), 0)) AS month_of_payback,
        (
            SELECT 
                SUM(t3.profit)
            FROM 
                operations t3
            WHERE 
                t3.client_id = t1.id
                AND t3.month <= CEILING(t1.investment / NULLIF(AVG(t2.profit), 0))
        ) - t1.investment AS return
    FROM 
        clients t1
    LEFT JOIN 
        operations t2 ON t2.client_id = t1.id
    GROUP BY 
        t1.id, t1.name, t1.investment
) s1
WHERE return >= 0
ORDER BY return DESC;
