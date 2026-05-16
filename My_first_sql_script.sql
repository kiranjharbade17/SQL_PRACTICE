CREATE DATABASE startersql;
USE startersql;

CREATE TABLE users1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users1 (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);

select*from users1;
select name, email from users1;
ALTER TABLE users1 Add COLUMN is_active BOOLEAN DEFAULT TRUE;
ALTER TABLE users1 DROP COLUMN is_active;
ALTER TABLE users1 MODIFY column name VARCHAR(150);
ALTER TABLE users1 MODIFY column email VARCHAR(100) AFTER id;
alter table users1 modify column date_of_birth datetime first;

filtering rows with WHERE

SELECT * FROM users1 WHERE gender= "male";
SELECT * FROM users1 WHERE gender!= "female";
SELECT * FROM users1 WHERE gender<> "female";
select* from users1 where date_of_birth < 1995-01-01;
select * from users1 where id>10;
select*from users1 where id>=5;
select*from users1 where id<=5;
select *from users1 where date_of_birth is null;
select*from users1 where date_of_birth is not null;
select*from users1 where date_of_birth between '1990-01-01' and '2000-12-01';
select*from users1 where gender in('male', 'others');
select*from users1 where name like 'A%';
select *from users1 where name like '%a';
select*from users1 where name like "%ma%";
select*from users1 where gender="female" and date_of_birth<'2000-01-01';
select*from users1 where gender="male" or "other";
select*from users1 order by date_of_birth ASC;
select*from users1 order by name DESC;
select*from users1 limit 5;
select*from users1 limit 10 offset 5;
select*from users1 limit 5,10;
select*from users1 order by id desc limit 10;
select*from users1 where salary<60000 order by created_at desc limit 5;
select*from users1 order by salary desc;
select * from users1 where salary between '4000' and '50000';

UPDATE - Modifying existing data

update users1
set name = "omi"
where id = 1;

update users1
set name = "kiran", email = "kiranjharbade2005@gmail.com"
where id =2

update users1
set gender= "female";

update users1 set gender = "male" where id = 3;
update users1 set gender = "male" where id = 5;
update users1 set gender = "male" where id = 8;
update users1 set gender = "male" where id = 10;
update users1 set gender = "male" where id = 12;
update users1 set gender = "male" where id = 14;
update users1 set gender = "male" where id = 16;
update users1 set gender = "male" where id = 18;
update users1 set gender = "male" where id = 20;
update users1 set gender = "male" where id = 22;
update users1 set gender = "male" where id = 24;

select*from users1;

delete from users
where id=4;

delete from users;

drop table users;

select*from users;