-- Create Database
CREATE DATABASE IF NOT EXISTS hospitaldb;

USE hospitaldb;

-- =========================
-- Patient Table
-- =========================

CREATE TABLE IF NOT EXISTS patient  (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(20),
    disease VARCHAR(100),
    phoneNumber VARCHAR(15)
);

-- =========================
-- Doctor Table
-- =========================

CREATE TABLE IF NOT EXISTS doctor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phoneNumber VARCHAR(15)
);

-- =========================
-- Appointment Table
-- =========================

CREATE TABLE IF NOT EXISTS appointment (
    id INT PRIMARY KEY AUTO_INCREMENT,

    patient_id BIGINT NOT NULL,
    doctor_id BIGINT NOT NULL,

    appointment_date DATE NOT NULL,

    status VARCHAR(50) DEFAULT 'BOOKED',

    CONSTRAINT fk_patient
        FOREIGN KEY (patient_id)
        REFERENCES patient(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctor(id)
        ON DELETE CASCADE
);


SELECT *FROM appointment;

