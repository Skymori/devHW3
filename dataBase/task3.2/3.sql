use hw3;
SELECT sum(d.salary)
FROM developers d,
     skills s,
     developers_skills ds
where s.language = 'Java'
  and d.developer_id = ds.developer_id
  and s.skill_id = ds.skill_id;