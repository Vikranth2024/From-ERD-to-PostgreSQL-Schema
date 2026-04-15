-- schema.sql
-- Corrected schema for TaskBridge based on ER diagram

-- USERS TABLE
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

-- PROJECTS TABLE
CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL
);

-- TASKS TABLE
CREATE TABLE tasks (
    task_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT NOT NULL,
    project_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

-- Key fixes:

-- Added missing primary key to users

-- Added NOT NULL to important fields

-- Added UNIQUE constraint to email

-- Properly defined foreign key relationships for tasks
