--Total tickets handled by each agent
SELECT agent_id, COUNT(*) AS total_tickets
FROM Tickets
GROUP BY agent_id;

--Average resolution time per agent (in days)
SELECT agent_id,
       AVG(julianday(closed_at) - jualianday(opened_at)) AS avg_resolution_days
FROM Tickets
WHERE status = 'Closed'
GROUP BY agent_id;

--Open vs Closed tickets
SELECT status, COUNT(*) AS COUNT
FROM Tickets
GROUP BY status;

--Customers with most tickets
SELECT customer_id, COUNT(*) AS ticket_count
FROM Tickets
GROUP BY customer_id
ORDER BY ticket_count DESC;
