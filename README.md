# Challenge Solution: From ERD to PostgreSQL Schema

This repository contains the **corrected schema** for the TaskBridge ERD-to-SQL challenge.

## Overview

The ER diagram is located in the `ERD/` folder.  
The schema has been corrected to:

- Ensure all tables have **primary keys**
- Implement **foreign key relationships** according to the ER diagram
- Add **constraints** to important fields (NOT NULL, UNIQUE)
- Match data types to entity attributes

---

## How to Run

1. Create a PostgreSQL database:

```bash
CREATE DATABASE taskbridge;
```
2. Run the corrected schema:
```
psql -U <your_username> -d taskbridge -f schema.sql
```
3. Inspect the tables:
```
\d
\d users
\d projects
\d tasks
```

ER Diagram

The ER diagram (ERD/TaskBridge_ERD.png) shows:

Users: id, name, email

Projects: project_id, name, description

Tasks: task_id, title, user_id, project_id

Relationships:

Users 1 ΓåÆ * Tasks

Projects 1 ΓåÆ * Tasks

Verification

After executing the schema, you should see:

users, projects, and tasks tables created

Primary keys enforced

Foreign keys correctly referencing related tables

Constraints implemented on all critical fields

This solution is ready to use for learning and verification purposes.


---

### 4∩╕ÅΓâú ER Diagram (`TaskBridge_ERD.png`)

You can create a simple ER diagram using any tool (like draw.io, Lucidchart, or dbdiagram.io) with the following structure:

- **Users**
  - `id` (PK)
  - `name`
  - `email` (UNIQUE)
- **Projects**
  - `project_id` (PK)
  - `name`
  - `description`
- **Tasks**
  - `task_id` (PK)
  - `title`
  - `user_id` (FK ΓåÆ users.id)
  - `project_id` (FK ΓåÆ projects.project_id)

---
