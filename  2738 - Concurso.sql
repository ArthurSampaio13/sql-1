SELECT
    t1.name,
    ROUND((((t2.math * 2) + (t2.specific * 3) + (project_plan * 5)) / 10), 2) AS avg
FROM
    candidate t1
LEFT JOIN score t2 ON t1.id = t2.candidate_id
ORDER BY avg DESC;