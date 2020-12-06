# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Patient.destroy_all
Provider.destroy_all
Record.destroy_all

100.times do 
    Patient.create(name: Faker::Name.name, ssn: Faker::IDNumber.valid, dob: Faker::Date.birthday,sex: Faker::Gender.short_binary_type)
end 

10.times do 
    Provider.create(name: Faker::Name.name, password_digest: 'hello', email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, license_number: Faker::Number.number(digits: 10))
end 

50.times do 
    Record.create(patient_id: Patient.all.sample.id, provider_id: Provider.all.sample.id, location: Faker::Games::Overwatch.location, booster_date: Faker::Date.forward(days: 14), second_shot: Faker::Boolean.boolean(true_ratio: 0.2))
end 
