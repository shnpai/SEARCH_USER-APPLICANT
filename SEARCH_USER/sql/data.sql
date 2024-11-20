create table search_applicants_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    gender VARCHAR(255),
    license_number INT,
    license_type VARCHAR(255),
    position_applied VARCHAR(255),
    specialization VARCHAR(255),
    added_by INT,
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_by INT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(1, 'Evelyn', 'Harper', 'eharper0@amazonaws.com', 'Female', 2345456, 'Clinical Psychologist', 'Therapist', 'Cognitive Behavioral Therapy', '2024-05-09 22:12:22');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(2, 'Nathan', 'Bishop', 'nbishop1@cmu.edu', 'Male', 4214537, 'Educational Psychologist', 'Counselor', 'Child Development', '2024-06-17 03:17:53');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(3, 'Grace', 'Ellis', 'gellis2@usatoday.com', 'Female', 3579562, 'Industrial Psychologist', 'HR Specialist', 'Organizational Behavior', '2024-10-23 19:16:05');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(4, 'Dylan', 'Reid', 'dreid3@senate.gov', 'Male', 6688063, 'Forensic Psychologist', 'Consultant', 'Criminal Psychology', '2024-09-09 19:48:10');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(5, 'Sophia', 'Wells', 'swells4@constantcontact.com', 'Female', 4544586, 'Sports Psychologist', 'Performance Coach', 'Athlete Mental Training', '2024-04-19 19:25:56');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(6, 'Charlotte', 'Carter', 'ccarter5@businessinsider.com', 'Female', 3604557, 'Counseling Psychologist', 'Mental Health Counselor', 'Family Therapy', '2024-02-22 02:38:49');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(7, 'Benjamin', 'Foster', 'bfoster6@house.gov', 'Male', 2662663, 'Clinical Psychologist', 'Psychiatric Technician', 'Behavioral Therapy', '2024-09-18 22:49:52');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(8, 'Amelia', 'Ross', 'aross7@weather.com', 'Female', 394077, 'Clinical Psychologist', 'Therapist', 'Adolescent Psychology', '2024-07-24 22:34:56');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(9, 'Isabella', 'Morris', 'imorris8@cyberchimps.com', 'Female', 1467807, 'Educational Psychologist', 'Lecturer', 'Learning Disabilities', '2024-01-25 22:26:12');

insert into search_applicants_data 
(id, first_name, last_name, email, gender, license_number, license_type, position_applied, specialization, date_added) 
values 
(10, 'Jordan', 'Taylor', 'jtaylor9@independent.co.uk', 'Non-binary', 9826227, 'Forensic Psychologist', 'Consultant', 'Criminal Psychology', '2024-01-15 11:59:48');

 
 
CREATE TABLE user_accounts (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    password TEXT,
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);