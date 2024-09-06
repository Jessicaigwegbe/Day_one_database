-- creating a hospital_db database --
CREATE DATABASE hospital_db;
-- developing the database
USE hospital_db;
-- creating patients databaase --
CREATE TABLE patients(
patient_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR(50) NOT NULL,
language VARCHAR(20) NOT NULL);
-- creating providers database --
CREATE TABLE providers(
provider_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
provider_speciality VARCHAR(255) NOT NULL,
email_address VARCHAR(255),
phone_number VARCHAR(255),
date_joined DATE);
-- creating visits database --
CREATE TABLE visits(
visit_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id VARCHAR(255) NOT NULL,
provider_id VARCHAR(255) NOT NULL,
date_of_visits DATE NOT NULL,
 date_scheduled DATE NOT NULL,
 visits_department_id INT NOT NULL,
 visit_type VARCHAR(255) NOT NULL,
 blood_pressure_systollic INT,
 blood_pressure_diastollic DECIMAL,
 visit_status VARCHAR(255) NOT NULL);
 -- creating ed_visits database --
CREATE TABLE ed_visits(
visit_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id VARCHAR(255) NOT NULL,
aculty INT NOT NULL,
reason_of_visits VARCHAR(255)NOT NULL,
deposition VARCHAR(255) NOT NULL);
-- creating admissions database --
CREATE TABLE admissions(
admission_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT NOT NULL,
admission_date DATE NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR(255) NOT NULL,
service VARCHAR(255) NOT NULL,
primary_diagonsis VARCHAR(255) NOT NULL);
-- creating discharge database --
 CREATE TABLE discharges(
discharge_id INT PRIMARY KEY AUTO_INCREMENT,
admission_id INT NOT NULL,
patient_id INT NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR(255) NOT NULL);