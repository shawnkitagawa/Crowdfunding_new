-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT backers_count, cf_id
FROM campaign
WHERE outcome = 'live'
ORDER BY backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT *
FROM backers;

SELECT * 
FROM campaign;
-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order.
SELECT c.first_name, c.last_name, c.email, ca.goal
FROM contacts as c
JOIN campaign as ca
ON c.contact_id = ca.contact_id
WHERE outcome = 'live';




-- Check the table
SELECT *
FROM campaign;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT b.first_name, b.last_name,b.email, c.goal as 'Left of Goal'
FROM backers as b
JOIN campaign as c
ON (b.cf_id = c.cf_id)
WHERE outcome = 'live'
ORDER BY backer_id DESC;



-- Check the table


