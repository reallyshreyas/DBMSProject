create database BlueWhaleTravels;
use BlueWhaleTravels;

SET SQL_SAFE_UPDATES = 0;

-- User table
CREATE TABLE user(
    userid VARCHAR(20) PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(30) not null,
    bookid VARCHAR(20) NOT NULL
);

-- Bus Table
create table bus(
	busid VARCHAR(20) PRIMARY KEY,
	from_ VARCHAR(20) not null,
	to_ VARCHAR(20) not null,
	cost INT not null,
	rating DECIMAL(13,2) not null,
	depature time not null,
	arrival time not null
);

-- Booking Table
create table booking(
	booking_id VARCHAR(20) primary key,
	userid VARCHAR(20) not null,
	busid VARCHAR(20) not null,
	passengers INT not null,
	date_ DATE
);


-- Bus Values
insert into bus values('12345', 'vizag', 'hyderabad',  1299, 4.3, '08:00:00', '12:00:00');
insert into bus values('12346', 'vizag', 'delhi',  1999, 3.3, '08:00:00', '16:00:00');
insert into bus values('12348', 'vizag', 'chennai',  1289, 4.8, '08:00:00', '12:00:00');
insert into bus values('22338', 'vizag', 'kolkata',  2100, 4.2, '22:00:00', '12:00:00');

insert into bus values('87734', 'vizag', 'chennai',  1800, 3.2, '13:00:00', '23:30:00');
insert into bus values('87634', 'vizag', 'delhi',  3800, 4.6, '02:00:00', '22:30:00');

insert into bus values('11756', 'vizag', 'chennai',  1500, 2.4, '07:00:00', '22:30:00');
insert into bus values('11754', 'vizag', 'chennai',  1800, 3.2, '08:00:00', '18:30:00');
insert into bus values('11632', 'vizag', 'chennai',  2500, 4.6, '10:00:00', '20:00:00');
insert into bus values('11098', 'vizag', 'chennai',  3200, 4.8, '05:00:00', '14:00:00');
insert into bus values('11704', 'vizag', 'chennai',  1500, 2.4, '07:00:00', '22:30:00');

insert into bus values('12056', 'vizag', 'hyderabad',  1500, 2.4, '07:00:00', '12:30:00');
insert into bus values('12300', 'vizag', 'hyderabad',  2500, 3.6, '09:00:00', '14:30:00');
insert into bus values('12302', 'vizag', 'hyderabad',  3500, 3.8, '10:00:00', '15:30:00');
insert into bus values('12307', 'vizag', 'hyderabad',  1800, 4.2, '12:00:00', '17:30:00');
insert into bus values('12321', 'vizag', 'hyderabad',  4000, 4.9, '13:00:00', '18:30:00');

insert into bus values('14654', 'vizag', 'delhi',  2000, 1.9, '02:00:00', '21:30:00');
insert into bus values('14371', 'vizag', 'delhi',  4000, 2.8, '04:00:00', '22:30:00');
insert into bus values('14306', 'vizag', 'delhi',  6000, 3.6, '07:00:00', '23:00:00');
insert into bus values('14455', 'vizag', 'delhi',  6500, 4.2, '11:00:00', '23:45:00');
insert into bus values('14309', 'vizag', 'delhi',  8000, 4.8, '12:00:00', '18:30:00');

insert into bus values('15609', 'vizag', 'kolkata',  2000, 3.8, '08:00:00', '18:30:00');
insert into bus values('15009', 'vizag', 'kolkata',  5000, 4.6, '12:00:00', '22:00:00');

insert into bus values('21399', 'hyderabad', 'vizag',  2500, 4.2, '09:00:00', '16:00:00');
insert into bus values('21209', 'hyderabad', 'vizag',  7200, 4.9, '13:00:00', '19:30:00');

insert into bus values('22679', 'hyderabad', 'kolkata',  4500, 2.8, '01:00:00', '18:30:00');
insert into bus values('22099', 'hyderabad', 'kolkata',  6700, 3.6, '12:00:00', '23:30:00');

insert into bus values('23309', 'hyderabad', 'delhi',  4600, 3.4, '08:00:00', '22:30:00');
insert into bus values('23409', 'hyderabad', 'delhi',  9000, 4.5, '13:00:00', '23:45:00');

insert into bus values('24309', 'hyderabad', 'chennai',  3000, 4.3, '06:00:00', '18:45:00');
insert into bus values('28809', 'hyderabad', 'chennai',  7000, 4.5, '13:00:00', '03:45:00');


insert into bus values('31123', 'chennai', 'vizag',  3200, 3.5, '08:00:00', '13:45:00');
insert into bus values('31321', 'chennai', 'vizag',  7800, 4.5, '13:00:00', '22:35:00');

insert into bus values('32002', 'chennai', 'hyderabad',  7800, 4.5, '07:00:00', '16:00:00');
insert into bus values('32004', 'chennai', 'hyderabad',  9800, 5.0, '17:00:00', '23:35:00');

insert into bus values('33456', 'chennai', 'kolkata',  9800, 4.0, '06:00:00', '16:00:00');
insert into bus values('33765', 'chennai', 'kolkata', 12800, 5.8, '17:00:00', '01:35:00');

insert into bus values('34367', 'chennai', 'delhi', 12800, 4.2, '19:00:00', '23:35:00');
insert into bus values('34000', 'chennai', 'delhi', 14800, 4.6, '21:00:00', '03:35:00');


insert into bus values('41260', 'kolkata', 'delhi', 4600, 4.2, '11:00:00', '21:35:00');
insert into bus values('41320', 'kolkata', 'delhi', 6700, 5.0, '11:30:00', '20:35:00');

insert into bus values('42003', 'kolkata', 'vizag', 4356, 3.2, '09:00:00', '21:35:00');
insert into bus values('42654', 'kolkata', 'vizag', 9087, 4.9, '14:00:00', '23:55:00');

insert into bus values('43004', 'kolkata', 'chennai', 9500, 2.9, '01:00:00', '17:55:00');
insert into bus values('03124', 'kolkata', 'chennai', 11200, 3.9, '16:00:00', '05:55:00');

insert into bus values('44098', 'kolkata', 'hyderabad', 6200, 4.2, '23:00:00', '11:55:00');
insert into bus values('44342', 'kolkata', 'hyderabad', 10250, 4.9, '17:00:00', '02:35:00');

insert into bus values('51124', 'delhi', 'hyderabad', 8200, 2.6, '08:35:00', '23:55:00');
insert into bus values('71224', 'delhi', 'hyderabad', 9250, 4.7, '16:20:00', '09:00:00');

insert into bus values('52334', 'delhi', 'kolkata', 4000, 3.7, '08:15:00', '17:00:00');
insert into bus values('52014', 'delhi', 'kolkata', 6000, 4.2, '10:00:00', '20:00:00');

insert into bus values('53000', 'delhi', 'vizag', 12500, 1.2, '04:30:00', '23:00:00');
insert into bus values('53201', 'delhi', 'vizag', 14000, 5.0, '09:30:00', '23:45:00');

insert into bus values('54333', 'delhi', 'chennai', 13200, 4.2, '01:30:00', '00:55:00');
insert into bus values('54231', 'delhi', 'chennai', 15000, 4.8, '16:30:00', '13:00:00');


SELECT * FROM bus where busid = '15009';
select * from user;
select * from booking;


ALTER TABLE bus
ADD capacity int NOT NULL DEFAULT(60);

update bus set capacity = 60 where busid = '15009';
update booking set passengers = '3' ,date_ = '2021-10-30' where booking_id = '86905';

delete from user;
delete from booking;

show tables;
alter table bus drop column capacity;

-- Giving all the access to 'root'@'localhost'
grant all privileges on BlueWhaleTravels.* to 'root'@'localhost';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';

GRANT ALL ON *.* TO 'root'@'localhost' WITH GRANT OPTION;

select * from user;

-- Stored Procedure
DELIMITER //
CREATE PROCEDURE UpdateBusRating(IN bus_id VARCHAR(20), IN new_rating DECIMAL(13,2))
BEGIN
    UPDATE bus SET rating = new_rating WHERE busid = bus_id;
END //
DELIMITER ;

-- Cursor
DELIMITER //
CREATE PROCEDURE PrintAllUsers()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE user_name VARCHAR(100);
    DECLARE user_phone VARCHAR(20);
    DECLARE user_email VARCHAR(30);

    DECLARE cur CURSOR FOR SELECT username, phone, email FROM user;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO user_name, user_phone, user_email;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT CONCAT(user_name, ', ', user_phone, ', ', user_email) AS user_info;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;





