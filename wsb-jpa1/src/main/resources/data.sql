insert into address (id, address_line1, address_line2, city, postal_code)
values (901, 'xx', 'yy', 'city', '60-400');

INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (1, 'Warszawa', 'ul. Marszałkowska 10', 'Apt 5', '00-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (2, 'Kraków', 'ul. Floriańska 15', NULL, '31-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (3, 'Gdańsk', 'ul. Długa 5', 'Lokal 2', '80-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (4, 'Wrocław', 'ul. Świdnicka 8', NULL, '50-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (5, 'Poznań', 'ul. Stary Rynek 20', 'Pietro 3', '60-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (6, 'Łódź', 'ul. Piotrkowska 100', NULL, '90-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (7, 'Szczecin', 'ul. Jasna 12', 'Lokal 5', '70-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (8, 'Lublin', 'ul. Krakowskie Przedmieście 45', NULL, '20-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (9, 'Katowice', 'ul. Chorzowska 30', 'Budynek B', '40-001');
INSERT INTO ADDRESS (id, city, address_line1, address_line2,postal_code)
VALUES (10, 'Rzeszów', 'ul. Rejtana 55', NULL, '35-001');

INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (1, 10, 'Jan', 'Kowalski', '123456789', 'jan.kowalski@example.com', 'D001', 'SURGEON');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (2, 9, 'Anna', 'Nowak', '987654321', 'anna.nowak@example.com', 'D002', 'SURGEON');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (3, 8, 'Piotr', 'Wiśniewski', '555666777', 'piotr.w@example.com', 'D003', 'OCULIST');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (4, 7, 'Magda', 'Zielińska', '888999000', 'magda.z@example.com', 'D004', 'SURGEON');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (5, 6, 'Tomasz', 'Dąbrowski', '111222333', 'tomasz.d@example.com', 'D005', 'OCULIST');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (6, 5, 'Ewa', 'Lewandowska', '333444555', 'ewa.l@example.com', 'D006', 'SURGEON');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (7, 4, 'Krzysztof', 'Kamiński', '777888999', 'krzysztof.k@example.com', 'D007', 'GP');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (8, 3, 'Aleksandra', 'Wójcik', '222333444', 'aleksandra.w@example.com', 'D008', 'GP');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (9, 2, 'Marek', 'Kaczmarek', '444555666', 'marek.k@example.com', 'D009', 'OCULIST');
INSERT INTO DOCTOR (id, address_id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES (10, 1, 'Joanna', 'Mazur', '666777888', 'joanna.m@example.com', 'D010', 'OCULIST');




INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (1, 1, 'Jan', 'Kowalski', '123456789', 'jan.kowalski@example.com', 'P001', '1985-07-12');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (2, 2, 'Anna', 'Nowak', '987654321', 'anna.nowak@example.com', 'P002', '1990-05-23');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (3, 3, 'Piotr', 'Wiśniewski', '555666777', 'piotr.w@example.com', 'P003', '1978-11-30');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (4, 4, 'Magda', 'Zielińska', '888999000', 'magda.z@example.com', 'P004', '1983-02-14');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (5, 5, 'Tomasz', 'Dąbrowski', '111222333', 'tomasz.d@example.com', 'P005', '1995-09-08');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (6, 6, 'Ewa', 'Lewandowska', '333444555', 'ewa.l@example.com', 'P006', '2000-06-25');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (7, 7, 'Krzysztof', 'Kamiński', '777888999', 'krzysztof.k@example.com', 'P007', '1969-03-18');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (8, 8, 'Aleksandra', 'Wójcik', '222333444', 'aleksandra.w@example.com', 'P008', '1992-12-05');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (9, 9, 'Marek', 'Kaczmarek', '444555666', 'marek.k@example.com', 'P009', '1987-08-22');
INSERT INTO PATIENT (id, address_id, first_name, last_name, telephone_number, email, patient_number, date_of_birth)
VALUES (10, 10,'Joanna', 'Mazur', '666777888', 'joanna.m@example.com', 'P010', '1975-04-29');

INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (1, 1, 10, 'Rutynowa kontrola', '2024-03-29 10:00:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (2, 2, 9, 'Badanie kontrolne ciśnienia', '2024-03-30 09:15:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (3, 3, 8, 'Konsultacja dermatologiczna', '2024-03-31 11:30:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (4, 4, 7, 'Badanie krwi', '2024-04-01 08:45:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (5, 5, 6, 'USG jamy brzusznej', '2024-04-02 14:00:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (6, 6, 5, 'Rehabilitacja pourazowa', '2024-04-03 15:30:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (7, 7, 4, 'Konsultacja neurologiczna', '2024-04-04 10:00:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (8, 8, 3, 'Badanie EKG', '2024-04-05 13:15:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (9, 9, 2, 'Wizyta u ortopedy', '2024-04-06 12:45:00');
INSERT INTO VISIT (id, patient_id, doctor_id, description, time)
VALUES (10, 10, 1, 'Kontrola po zabiegu chirurgicznym', '2024-04-07 16:20:00');

INSERT INTO MEDICAL_TREATMENT (id, visit_id, description, type)
VALUES (1, 1, 'Badanie krwi', 'EKG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (2, 2, 'USG jamy brzusznej', 'EKG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (3, 3, 'Rezonans magnetyczny', 'RTG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (4, 4, 'Rehabilitacja pourazowa', 'RTG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (5, 5, 'EKG serca', 'USG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (6, 7, 'Gastroskopia', 'RTG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (7, 6, 'Wizyta kontrolna', 'RTG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (8, 10, 'Operacja usunięcia wyrostka', 'USG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (9, 8, 'Szczepienie przeciwko grypie', 'RTG');
INSERT INTO MEDICAL_TREATMENT (id, visit_id,description, type)
VALUES (10, 9, 'Terapia psychologiczna', 'USG');
