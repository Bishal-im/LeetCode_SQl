select e.name as employee
From Employee e
join Employee m
on e.managerId = m.id
where  e.salary > m.salary;
