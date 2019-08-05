
DROP TABLE IF EXISTS Employee;

create table Employee( 
EmployeeName VARCHAR(50),
Department  VARCHAR(20)
);
insert into Employee(EmployeeName,Department)
values
('Modesto','IT'),
('Ayine','IT'),
('Christopher','Sales'),
('Cheong woo','Sales'),
('Saulat','Administration'),
(null,'Operations'),
('Heidy',null);



DROP TABLE IF EXISTS Rooms;
create table Rooms( 
ID int,
RoomName  VARCHAR(20)
);
insert into Rooms(ID,RoomName) 
values
(1,'101'),
(2,'102'),
(3,'Auditorium A'),
(4,'Auditorium B');


DROP TABLE IF EXISTS RoomAcess;
create table RoomAcess(
ID int,
Department  VARCHAR(20)
); 
insert into RoomAcess(ID,Department) 
values
(1,'IT'),
(2,'IT'),
(2,'Sales'),
(3,'Sales');


select Department, EmployeeName from Employee
where Department is not Null;

select Rooms.RoomName, RoomAcess.Department
From Rooms left join RoomAcess
ON Rooms.ID=RoomAcess.ID;

select e.EmployeeName, a.Department, r.RoomName
FROM Employee e join Rooms r join RoomAcess a
ON r.ID=a.ID
ON a.Department=e.Department
Order by EmployeeName,
		 Department,
         RoomName;






