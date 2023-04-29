-- TO - DO app structure 

-- Creating database
CREATE DATABASE n19_todo_db;
USE n19_todo_db;

-- Create tasks table
CREATE TABLE IF NOT EXISTS tasks (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(128) NOT NULL,
    info VARCHAR(512),
    parent_id INT,
    is_done SMALLINT DEFAULT 0,
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO tasks (task, info, parent_id) VALUES
    ("Do homework", "I have a lot of  tasks to do", 0),
    ("TASK 1", "", 1),
    ("TASK 2", "", 1),
    ("TASK 3", "", 1);
INSERT INTO tasks (tasks, parent_id) VALUES
    ("Download CS.GO",0),
    ("Update system", 0);
INSERT INTO tasks(task, info, parent_id, is_done) VALUES
    ("Prepere OS", "Install all aditional soft on it", 0, 1),
    ("Install Office app", "Download it from microsoft.com", 7, 1),
    ("Install Google Chrome", "Make as primary browser", 7, 1);

-- THis is a new comment!