use hw3;
alter table projects add column cost double;
UPDATE projects SET cost = 9000 WHERE (project_id = 1);
UPDATE projects SET cost = 7800 WHERE (project_id = 2);
UPDATE projects SET cost = 6600 WHERE (project_id = 3);
UPDATE projects SET cost = 5800 WHERE (project_id = 4);
UPDATE projects SET cost = 8700 WHERE (project_id = 5);
UPDATE projects SET cost = 7500 WHERE (project_id = 6);
UPDATE projects SET cost = 9500 WHERE (project_id = 7);