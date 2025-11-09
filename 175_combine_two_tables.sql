Select 
p.firstName,
p.lastName,
a.city,
a.state
From Person as p
LEFT JOIN Address as a
on p.personId = a.personId
