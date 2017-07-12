# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create!(name: "School Admin", description: "School Admin")

AdminUser.create!(email: 'admin@caleb.com', password: 'password', password_confirmation: 'password', role_id: 1, school_id: 1, auth_token:"calebauth26") if Rails.env.development?

calebv1 = School.create(
  name: "Caleb",
  token: "bcdefhi123456",
  is_active: true,
  expiration_date: ""
)
calebv1.school_details.create(contact_number: "4423190", fax_number: "4423199", address: "Quezon City, Philippines", description: "Test School", established_year: 1999)
