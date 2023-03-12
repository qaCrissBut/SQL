create table employees(
id serial primary key,
employee_name Varchar(50) not null
); 

select * from employees

insert into employees(id, employee_name) VALUES(1,'Andre'),
                                               (2,'use2'),
                                               (3,'user3'),
                                               (4,'user4'),
                                               (5,'user5'),
                                               (6,'user6'),
                                               (7,'user7'),
                                               (8,'user8'),
                                               (9,'user9'),
                                               (10,'user10'),
                                               (11,'user11'),
                                               (12,'user12'),
                                               (13,'user13'),
                                               (14,'user14'),
                                               (15,'user15'),
                                               (16,'user16'),
                                               (17,'user17'),
                                               (18,'user18'),
                                               (19,'user19'),
                                               (20,'user20'),
                                               (21,'user21'),
                                               (22,'user22'),
                                               (23,'user23'),
                                               (24,'user24'),
                                               (25,'user25'),
                                               (26,'user26'),
                                               (27,'user27'),
                                               (28,'user28'),
                                               (29,'user29'),
                                               (30,'user30'),
                                               (31,'user31'),
                                               (32,'user32'),
                                               (33,'user33'),
                                               (34,'user34'),
                                               (35,'user35'),
                                               (36,'user36'),
                                               (37,'user37'),
                                               (38,'user38'),
                                               (39,'user39'),
                                               (40,'user40'),
                                               (41,'user41'),
                                               (42,'user42'),
                                               (43,'user43'),
                                               (44,'user44'),
                                               (45,'user45'),
                                               (46,'user46'),
                                               (47,'user47'),
                                               (48,'user48'),
                                               (49,'user49'),
                                               (50,'user50'),
                                               (51,'user51'),
                                               (52,'user52'),
                                               (53,'user53'),
                                               (54,'user54'),
                                               (55,'user55'),
                                               (56,'user56'),
                                               (57,'user57'),
                                               (58,'user58'),
                                               (59,'user59'),
                                               (60,'user60'),
                                               (61,'user61'),
                                               (62,'user62'),
                                               (63,'user63'),
                                               (64,'user64'),
                                               (65,'user65'),
                                               (66,'user66'),
                                               (67,'user67'),
                                               (68,'user68'),
                                               (69,'user69'),
                                               (70,'user70');
      
create table salary(
id serial primary key,
monthly_salary int not null
); 

select * from salary

INSERT INTO salary VALUES (1, 1000),
                          (2, 1100),                        
                          (3, 1200),
                          (4, 1300),
                          (5, 1400),
                          (6, 1500),
                          (7, 1600),
                          (8, 1700),
                          (9, 1800),
                          (10, 1900),
                          (11, 2000),
                          (12, 2100),
                          (13, 2200),
                          (14, 2300),
                          (15, 2400),
                          (16, 2500);
                         
                         
create table employee_salary(
id Serial primary key,
employee_id Int not null unique,
salary_id Int not null
);            

select * from employee_salary

create table employee_salary(
id Serial primary key,
employee_id Int not null unique,
salary_id Int not null
);   
update employee_salary set salary_id = 2 where id = 16;
update employee_salary set salary_id = 4 where id = 17;
INSERT INTO employee_salary values (1, 100, 1),
                                   (2, 70, 2),
                                   (3, 32, 3),
                                   (4, 1, 4),
                                   (5, 2, 5),
                                   (6, 3, 6),
                                   (7, 95, 7),
                                   (8, 5, 8),
                                   (9, 6, 9),
                                   (10, 7, 10),
                                   (11, 8, 11),
                                   (12, 80, 12),
                                   (13, 10, 13),
                                   (14, 11, 14),
                                   (15, 90, 15),
                                   (16, 12, 2),
                                   (17, 13, 4),
                                   (18, 770, 15),
                                   (19, 14, 14),
                                   (20, 15, 13),
                                   (21, 16, 12),
                                   (22, 17, 11),
                                   (23, 18, 10),
                                   (24, 19, 9),
                                   (25, 20, 8),
                                   (26, 303, 7),
                                   (27, 22, 5),
                                   (28, 23, 4),
                                   (29, 24, 3),
                                   (30, 25, 2),
                                   (31, 26, 1),
                                   (32, 79, 11),
                                   (33, 27, 3),
                                   (34, 105, 6),
                                   (35, 29, 4),
                                   (36, 30, 5),
                                   (37, 31, 7),
                                   (38, 35, 3),
                                   (39, 33, 8),
                                   (40, 75, 9);
    
select * from roles

create table roles(
id Serial primary key,
role_name int not null unique
);  

drop table roles cascade;

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);
ALTER TABLE roles RENAME COLUMN role_title TO role_name;

select *from roles

insert into roles (id, role_name) values (1, 'Junior Python developer'),
                                         (2,'Middle Python developer'),
                                         (3,'Senior Python developer'),
                                         (4,'Junior Java developer'),
                                         (5,'Middle Java developer'),                                  
                                         (6,'Senior Java developer'),
                                         (7,'Junior JavaScript developer'),
                                         (8,'Middle JavaScript developer'),
                                         (9,'Senior JavaScript developer'),
                                         (10,'Junior Manual QA engineer'), 
                                         (11,'Middle Manual QA engineer'),
                                         (12,'Senior Manual QA engineer'),
                                         (13,'Project Manager'),
                                         (14,'Designer'),
                                         (15,'HR'),
                                         (16,'CEO'),
                                         (17,'Sales manager'),
                                         (18,'Junior Automation QA engineer'),
                                         (19,'Middle Automation QA engineer'),
                                         (20,'Senior Automation QA engineer');
                            
select*from roles_employee

                                    
create table roles_employee(
id Serial primary key,
employee_id Int not null unique,
role_id Int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);  

insert into roles_employee values (1,1,1),
                                  (2,2,2),
                                  (3,3,3),
                                  (4,4,4),
                                  (5,5,5),
                                  (6,6,6),
                                  (7,7,7),
                                  (8,8,8),
                                  (9,9,9),
                                  (10,10,10),
                                  (11,11,11),
                                  (12,12,12),
                                  (13,13,13),
                                  (14,14,14),
                                  (15,15,15),
                                  (16,16,18),
                                  (17,17,19),
                                  (18,18,20),
                                  (19,19,12),
                                  (20,20,11),
                                  (21,21,9),
                                  (22,22,10),
                                  (23,23,8),
                                  (24,24,7),
                                  (25,25,6),
                                  (26,26,5),
                                  (27,27,4),
                                  (28,28,3),
                                  (29,40,2),
                                  (30,41,1),
                                  (31,42,18),
                                  (32,43,19),
                                  (33,44,1),
                                  (34,45,20),
                                  (35,46,4),
                                  (36,47,5),
                                  (37,48,6),
                                  (38,49,7),
                                  (39,50,8),
                                  (40,51,9);
                                 
                                 
      
  Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name, salary.monthly_salary from employees
left join salary on employees.id=salary.id;

Вывести всех работников у которых ЗП меньше 2000

select roles.role_name, salary.monthly_salary from roles 
left join salary on roles.id = salary.id where monthly_salary < 2000;

Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary, employees.employee_name from salary
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id where employees.employee_name is null;

Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary, employees.employee_name from salary
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id where employees.employee_name is null and monthly_salary < 2000;

Найти всех работников кому не начислена ЗП

select employees.employee_name,employee_salary.salary_id, salary. monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id where monthly_salary is null;

Вывести всех работников с названиями их должности

select employees.employee_name, roles_employee.role_id, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.role_id
left join roles on roles_employee.role_id = roles.id;

Вывести имена и должность только Java разработчиков

select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where role_name like '%Java%';

Вывести имена и должность только Python разработчиков

select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where role_name like '%Python%';

Вывести имена и должность всех QA инженеров

select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where role_name like '%QA%';

Вывести имена и должность ручных QA инженеров

select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where role_name like '%Manual QA %';

Вывести имена и должность автоматизаторов QA

select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where role_name like '%Automation QA %';

Вывести имена и зарплаты Junior специалистов

select roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name like '%Junior%';


Вывести имена и зарплаты Middle специалистов

select roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name like '%Middle%';

Вывести имена и зарплаты Senior специалистов

select roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name like '%Senior%';

Вывести зарплаты Java разработчиков

select roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name like '%Java developer%';
 

Вывести зарплаты Python разработчиков

select roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name like '%Python developer%';

Вывести имена и зарплаты Junior Python разработчиков

select employees.employee_name, roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name = 'Junior Python developer';

Вывести имена и зарплаты Middle JS разработчиков

select employees.employee_name, roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name = 'Middle JavaScript developer';

Вывести имена и зарплаты Senior Java разработчиков

select employees.employee_name, roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id  where role_name = 'Senior Java developer';
            
Вывести зарплаты Junior QA инженеров

select roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join roles_employee on employee_salary.employee_id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like 'Junior%QA%';

Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) from salary  
join employee_salary on salary.id = employee_salary.employee_id
join roles_employee on employee_salary.employee_id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id  where role_name like 'Junior%';

Вывести сумму зарплат JS разработчиков

select sum(monthly_salary) from salary  
join employee_salary on salary.id = employee_salary.employee_id
join roles_employee on employee_salary.employee_id = roles_employee.role_id
join roles on role_id = roles.id where role_name like '%JavaScript developer';

Вывести минимальную ЗП QA инженеров

select min(monthly_salary) from salary  
join employee_salary on salary.id = employee_salary.employee_id
join roles_employee on employee_salary.employee_id = roles_employee.role_id
join roles on role_id = roles.id where role_name like'%QA%';

Вывести максимальную ЗП QA инженеров

select max(monthly_salary) from salary  
join employee_salary on salary.id = employee_salary.employee_id
join roles_employee on employee_salary.employee_id = roles_employee.role_id
join roles on role_id = roles.id where role_name like '%QA%';

Вывести количество QA инженеров

select count(roles.id) from roles
join roles_employee on roles.id = roles_employee.role_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id  
left join employees on employee_salary.employee_id  = employees.id where role_name like '%QA%';

Вывести количество Middle специалистов

select count(roles.id) from roles
join roles_employee on roles.id = roles_employee.role_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id  
left join employees on employee_salary.employee_id  = employees.id where role_name like '%Middle%';

Вывести количество разработчиков

select count(roles.id) from roles
join roles_employee on roles.id = roles_employee.role_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id  
left join employees on employee_salary.employee_id  = employees.id where role_name like '%developer';

Вывести фонд (сумму) зарплаты разработчиков

select sum(monthly_salary) from salary  
join employee_salary on salary.id = employee_salary.employee_id
join roles_employee on employee_salary.employee_id = roles_employee.role_id
join roles on role_id = roles.id where role_name like '%developer';

Вывести имена, должности и ЗП всех специалистов по возрастанию

select employees.employee_name, roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id 
Order by employees.employee_name

 Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select employees.employee_name, roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id where salary.monthly_salary BETWEEN 1700 and 2300
Order by salary.monthly_salary

Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

 select employees.employee_name, roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id where salary.monthly_salary<2300
Order by salary.monthly_salary

Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

 select employees.employee_name, roles.role_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id  = salary.id where salary.monthly_salary in(2300, 1500, 2000)
Order by salary.monthly_salary
