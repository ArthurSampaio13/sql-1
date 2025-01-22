SELECT 
    t2.name AS name,
    SUM(t1.amount) AS sum
FROM 
    products t1
LEFT JOIN 
    categories t2 ON t1.id_categories = t2.id
GROUP BY 
    t2.name
ORDER BY 
    t2.name;