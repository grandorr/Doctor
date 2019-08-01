Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
specialty = ["Dentist","Dermatology","Psychologue","Doctor"]

100.times do

m = City.create!(city: Faker::Address.city)
d1 = Doctor.create(city: m , first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
p1 = Patient.create(city: m , first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
a = Appointment.create(city: m , doctor: d1, patient: p1, date: Faker::Date.forward(days: 23))
s1 = Specialty.create(specialty: specialty.sample)
s2 = Specialty.create(specialty: specialty.sample)
Join.create(doctor: d1,specialty: s1)
if rand(1..100) > 70 
Join.create(doctor: d1,specialty: s2)
end
end
