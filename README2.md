# Customer Support Ticketing System

This project simulates a support environment with agents handling customer tickets. It's designed to showcase SQL skills relevant to a Software Support Analyst role.

## Features
- Table creation for Agents, Customers, and Tickets
- Sample data insertions
- SQL queries to:
  - Track agent performance
  - Measure resolution times
  - Monitor ticket statuses
  - Identify top customers by ticket volume

## Tools Used
- SQL (SQLite/MySQL/PostgreSQL)
- Sample data written manually

## Sample Queries
```sql
-- Average resolution time per agent
SELECT agent_id,
       AVG(julianday(closed_at) - julianday(opened_at)) AS avg_resolution_days
FROM Tickets
WHERE status = 'Closed'
GROUP BY agent_id;
