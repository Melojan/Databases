CREATE PROCEDURE automaticNotifications()
SELECT email FROM users
WHERE NOT role IN ("admin","premium")
ORDER BY email;