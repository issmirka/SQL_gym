CREATE DATABASE gym;
USE gym;
CREATE TABLE club ( 
club_ID INT NOT NULL,
club_name VARCHAR (50),
club_city VARCHAR (50) PRIMARY KEY
); 
INSERT INTO club ( club_ID, club_name, club_city )
VALUES 
('3388', 'Fitness Academy', 'Wroclaw'),
('3397', 'McFIT', 'Krakow'),
('4354', 'Puma Sports Center', 'Szczecin');

CREATE TABLE Plan (
training_level VARCHAR (50) PRIMARY KEY,
price INT NOT NULL);

INSERT INTO  Plan
( training_level, price )
VALUES
('beginner', '300'),
('intermediate', '400'), 
('advanced', '500'); 

CREATE TABLE members (
member_id INT NOT NULL primary key,
member_name VARCHAR (50),
age INT NOT NULL,
member_level VARCHAR (50),
member_city VARCHAR (50), 
gender VARCHAR (50),
FOREIGN KEY (member_city) REFERENCES  club(club_city),
FOREIGN KEY (member_level) REFERENCES  Plan(training_level)
); 
INSERT INTO members ( member_id, member_name, age, member_level, member_city, gender) 
VALUES 
('1', 'Paula', '27', 'beginner', 'Wroclaw', 'female'),
('2', 'Tomek', '33', 'advanced', 'Krakow', 'male'),
('3', 'Anna', '19', 'beginner', 'Wroclaw', 'female'),
('4', 'Kasia', '40', 'beginner', 'Szczecin', 'female'),
('5', 'Klaudiusz', '50', 'intermediate', 'Krakow', 'male'),
('6', 'Kasia', '29', 'advanced', 'Wroclaw', 'female'),
('7', 'Basia', '65', 'beginner', 'Szczecin', 'female'),
('8', 'Kamil', '57', 'intermediate', 'Krakow', 'male'), 
('9', 'Ola', '50', 'beginner', 'Krakow', 'female'),
('10', 'Kamila', '30', 'beginner', 'Krakow', 'female'),
('11', 'Klaus', '52', 'intermediate', 'Krakow', 'male'),
('12', 'Karolina', '20', 'advanced', 'Wroclaw', 'female'),
('13', 'Beata', '63', 'beginner', 'Szczecin', 'female'),
('14', 'Karol', '57', 'intermediate', 'Krakow', 'male'), 
('15', 'Oliwia', '59', 'beginner', 'Szczecin', 'female'),
('16', 'Paulina', '27', 'beginner', 'Wroclaw', 'female'),
('17', 'Tomasz', '33', 'advanced', 'Krakow', 'male'),
('18', 'Aniela', '19', 'beginner', 'Krakow', 'female'),
('19', 'Klaudiusz', '50', 'intermediate', 'Krakow', 'male'),
('20', 'Kasia', '19', 'advanced', 'Wroclaw', 'female'),
('21', 'Basia', '65', 'beginner', 'Szczecin', 'female'),
('22', 'Kamil', '57', 'intermediate', 'Krakow', 'male'), 
('23', 'Natalia', '54', 'beginner', 'Krakow', 'female'),
('24', 'Kinga', '30', 'beginner','Krakow', 'female'),
('25', 'Michal', '52', 'intermediate', 'Krakow', 'male'),
('26', 'Justyna', '23', 'advanced', 'Szczecin', 'female'),
('27', 'Malwina', '63', 'beginner', 'Szczecin', 'female'),
('28', 'Mateusz', '57', 'intermediate', 'Szczecin', 'male');


CREATE TABLE trainer (
trainer_ID INT NOT NULL PRIMARY KEY,
trainer_city VARCHAR (50) ,
salary INT NOT NULL, 
level_group VARCHAR (50),
FOREIGN KEY (trainer_city) REFERENCES  club(club_city)
); 

INSERT INTO trainer 
(trainer_ID, trainer_city, salary, level_group)
VALUES 
('123','Wroclaw','2000', 'advanced'),
('124', 'Wroclaw','2500', 'beginner'), 
('125', 'Wroclaw', '2000', 'intermediate'),
('223', 'Krakow', '3000', 'advanced'), 
('224', 'Krakow', '2800', 'beginner'),
('225', 'Krakow', '2900', 'intermediate'),
('321', 'Szczecin', '1800', 'beginner'), 
('331', 'Szczecin', '1700', 'advanced'), 
('332', 'Szczecin', '1600', 'intermediate');


CREATE TABLE payment (
member_ID INT NOT NULL, 
payAmount INT NOT NULL, 
PayDate DATE,
FOREIGN KEY (member_ID) REFERENCES members(member_ID)
);
INSERT INTO payment ( member_ID, payAmount, PayDate ) 
VALUES
('1', '300', '2022-10-23'),
('2', '20', '2022-10-24'),
('3', '50', '2022-10-24'),
('1', '40', '2022-08-23'),
('2', '25', '2022-08-24'),
('3', '18', '2022-09-24'),
('4', '300', '2022-10-23'),
('5', '20', '2022-10-24'),
('6', '50', '2022-10-24'),
('7', '40', '2022-08-23'),
('8', '25', '2022-08-27'),
('9', '18', '2022-09-24'),
('10', '25', '2022-09-24'),
('11', '18', '2022-07-24'),
('12', '300', '2022-11-23'),
('13', '202', '2022-11-24'),
('14', '500', '2022-11-24'),
('15', '404', '2022-08-23'),
('16', '250', '2022-08-27'),
('17', '22', '2022-09-24'),
('18', '300', '2022-10-23'),
('19', '20', '2022-10-24'),
('20', '400', '2022-10-24'),
('21', '40', '2022-08-23'),
('22', '25', '2022-08-27'),
('23', '180', '2022-08-24'),
('24', '40', '2022-10-09'),
('25', '180', '2022-07-24'),
('26', '30', '2022-07-23'),
('27', '22', '2022-11-28'),
('28', '500', '2022-07-24'),
('15', '44', '2022-08-23'),
('16', '350', '2022-08-27'),
('17', '39', '2022-08-24'),
('8', '25', '2022-08-27'),
('9', '180', '2022-09-24'),
('11', '25', '2022-09-24'),
('11', '18', '2022-09-24'),
('12', '303', '2022-10-23'),
('23', '202', '2022-10-24'),
('14', '507', '2022-10-24'),
('15', '404', '2022-11-23'),
('26', '280', '2022-11-27'),
('17', '22', '2022-11-24'),
('17', '300', '2022-11-23'),
('1', '200', '2022-10-23'),
('2', '203', '2022-10-24'),
('3', '506', '2022-10-24'),
('1', '40', '2022-09-23'),
('2', '25', '2022-08-24'),
('3', '18', '2022-09-24'),
('4', '300', '2022-11-23'),
('5', '202', '2022-10-24'),
('6', '590', '2022-10-24'),
('7', '400', '2022-08-23'),
('8', '250', '2022-08-27'),
('2', '25', '2022-10-24'),
('3', '18', '2022-09-24'),
('4', '300', '2022-09-23'),
('5', '90', '2022-10-24'),
('6', '50', '2022-08-24'),
('7', '67', '2022-08-23'),
('8', '25', '2022-08-27'),
('9', '167', '2022-09-24'),
('10', '25', '2022-09-24'),
('11', '122', '2022-07-24'),
('12', '300', '2022-10-23');


-- show the members who paid more than 200 and order by descending
SELECT payment.member_ID, members.member_name,
SUM(payment.payAmount) AS Totalpay
 FROM payment
INNER JOIN members ON payment.member_ID=members.member_ID
GROUP BY member_ID
HAVING Totalpay>200
ORDER BY Totalpay DESC;


-- assign the best trainer and club for my members
CREATE VIEW offer AS
SELECT members.member_ID, members.member_city, members.member_level, trainer.trainer_ID, club.club_name
FROM members
INNER JOIN trainer ON members.member_level=trainer.level_group
INNER JOIN club ON members.member_city=club.club_city;

SELECT * FROM offer ;

-- show trainers that salary is more than average salary
SELECT *
FROM TRAINER
WHERE salary> (SELECT AVG(salary) FROM trainer)
ORDER BY salary DESC;

-- show the total price for each training plan for all members 
CREATE VIEW profit AS
SELECT COUNT(MEMBER_ID), MEMBER_LEVEL, Plan.price, COUNT(MEMBER_ID)*Plan.price AS Totalprice
 FROM MEMBERS
INNER JOIN Plan ON members.member_level=Plan.training_level
GROUP BY MEMBER_LEVEL;

SELECT * FROM profit;

-- Assign members to club
DELIMITER //
CREATE PROCEDURE Members_club ()
BEGIN
SELECT MEMBER_ID, club.club_name FROM members
INNER JOIN club ON members.member_city=club.club_city;
END//
DELIMITER //;

-- welcome new members 
DELIMITER //
CREATE PROCEDURE welcome (f_name VARCHAR (50))
BEGIN
SELECT CONCAT('Welcome to our gym', ' ', f_name, ' ','Enjoy your training!');
END//
DELIMITER //;

-- Assign card based on level
DELIMITER $$  
CREATE FUNCTION check_level (  
    member_level varchar (50)
)   
RETURNS VARCHAR(20)  
DETERMINISTIC  
BEGIN  
    DECLARE check_level VARCHAR(20);  
    IF member_level = 'advanced' THEN  
        SET check_level = 'platinum';  
    ELSEIF member_level= 'intermediate' THEN  
        SET check_level = 'gold';  
    ELSEIF member_level= 'beginner' THEN  
        SET check_level = 'silver';  
    END IF;  
    RETURN (check_level);  
END$$  
DELIMITER ;  

-- check function
SELECT member_ID, member_name, check_level (member_level)
FROM members ORDER BY member_level;

-- procedure 1
CALL Members_club ();
-- procedure 2
CALL welcome ('Kasia');
-- view 1
SELECT * FROM offer ;
