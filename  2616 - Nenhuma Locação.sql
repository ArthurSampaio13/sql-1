SELECT 
    t1.id, 
    t1.name
FROM 
    customers t1
WHERE t1.id NOT IN (
    SELECT id_customers
	FROM locations
)