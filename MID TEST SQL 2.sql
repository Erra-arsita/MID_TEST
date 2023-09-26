CREATE TABLE email address (
  id serial PRIMARY KEY,
  email VARCHAR (50),
);

SELECT email
FROM email_address
GROUP BY email
HAVING COUNT(email) > 1;