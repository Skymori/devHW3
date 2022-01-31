use hw3;
SELECT p.name, avg(d.salary)
FROM developers d,
     projects p,
     developers_projects dp
where d.developer_id = dp.developer_id
  and p.project_id = dp.developer_id
  and p.project_id in
      (SELECT project_id
       FROM projects
       where cost in
             (select min(cost) from projects));