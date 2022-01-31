use hw3;
SELECT name, cost
FROM projects
where cost in
      (select min(cost) from projects);