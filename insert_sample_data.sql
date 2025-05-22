CREATE TABLE Agents (
    agent_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    agent_id INT,
    issue TEXT,
    status VARCHAR(20),
    opened_at DATE,
    closed_at DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id)
);
