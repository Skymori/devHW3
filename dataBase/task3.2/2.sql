use hw3;
SELECT name, salary
FROM developers
where salary in (
    select max(salary)
    from developers
);