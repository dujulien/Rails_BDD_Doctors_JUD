# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Create entries for patients table
 100.times do 
 	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
 end

 # Create entries for doctors table
 20.times do 
 	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code )
 end

 # Create cities
 20.times do
 	City.create(city_name: Faker::Address.city)
 end

 # Create entries for appointments table with relations between appointments, doctors and patients
 300.times do 
 	Appointment.create(date: Faker::Date.between(from: 2.days.ago, to: Date.today), patient: Patient.find(rand(1..100)), doctor: Doctor.find(rand(1..20)), city: City.find(rand(1..20)))
 end

 # Create specialties 
 ['Surgeon', 'Dentist', 'Neurologist', 'Dermatologist', 'Psychiatrist'].each do |specialty|
 	Specialty.create(specialty_name: specialty)
 end

 # Create relations between specialties and doctors 
 60.times do 
 	JoinTableDoctorSpecialty.create(specialty: Specialty.find(rand(1..5)), doctor: Doctor.find(rand(1..20)))
 end





