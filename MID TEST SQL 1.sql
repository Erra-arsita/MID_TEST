CREATE TABLE  input_table(
  id serial PRIMARY KEY,
  angka VARCHAR (50),
);

SELECT DISTINCT t1.num AS result
FROM input_table t1
JOIN input_table t2 ON t1.id = t2.id + 1
JOIN input_table t3 ON t1.id = t3.id + 2
WHERE t1.num = t2.num AND t2.num = t3.num
ORDER BY result;