puts "🌱 Seeding spices..."





puts "Seeding doctors..."
# Create 10 random Doctors

specialties = %w(Allergy-and-immunology Anesthesiology Dermatology Diagnostic-radiology Emergency-medicine Family-medicine Internal-medicine Medical-genetics Neurology Nuclear-medicine Obstetrics-and-gynecology Ophthalmology Pathology Pediatrics Physical-medicine-and-rehabilitation Preventive-medicine Psychiatry Radiation-oncology Surgery Urology)

10.times do
  Doctor.create(name: Faker::Name.name,  specialty: specialties.sample, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, location: Faker::Address.full_address)
end

puts "Seeding patients..."
# Create 10 random Patients
10.times do
  Patient.create(name: Faker::Name.name, birthdate: Faker::Date.birthday(min_age: 1, max_age: 99), email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
end

puts "Seeding appointments..."
# Create 10 random Appointments
appointment_type = ["online", "phone", "in-person"]
10.times do
  start_time = Faker::Time.forward(days: 90, period: :day)
  doctor_id = Doctor.ids.sample
  patient_id = Patient.ids.sample

  Appointment.create(appointment_type: appointment_type.sample, date_time: start_time, doctor_id: doctor_id, patient_id: patient_id)

end
puts "✅ Done seeding!"



