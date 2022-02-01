use hw3;
SELECT p.name, avg(d.salary)
FROM developers d,
     projects p,
     developers_projects dp
WHERE d.developer_id = dp.developer_id
  AND p.project_id = dp.developer_id
  AND p.project_id IN
      (SELECT project_id
       FROM projects
       WHERE cost IN
             (SELECT min(cost) FROM projects));