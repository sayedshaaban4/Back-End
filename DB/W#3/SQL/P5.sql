select Students.Name
from Students join Friends
on Students.ID = Friends.ID 
join Packages p1
on Students.ID = p1.ID 
join Packages p2
on Friends.Friend_ID = P2.ID
where p2.Salary > p1.Salary
order by p2.Salary;
