# README

FREEDOC PROJECT

This project aims at creating a relational database between patients, doctors, appointments, medical specialties and location tables.

To feed this database, please type $rails db:seed in your Terminal

To test the relations between the tables, you could try the following entries in the rails console ($rails c).

	- Doctor.find(5).patients
	- Patient.find(10).doctors
	- Doctor.find(14).appointments
	- Patient.find(30).appointments
	- City.find(3).appointments
	- Doctor.find(4).specialties
	- Specialty.find(2).doctors
