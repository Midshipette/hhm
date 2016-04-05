# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   
#   Owners
o1 = Owner.create(first_name: "Alan", last_name: "O1", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue premiere", postal_code: "1000", city: "Brussels", 
	country: "Belgique", email: "O1@gmail.com", password:"blablabla")
o2 = Owner.create(first_name: "Alan", last_name: "02", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue deux", postal_code: "1000", city: "Brussels", 
	country: "Belgique", email: "02@gmail.com", password:"blablabla")
o3= Owner.create(first_name: "Alan", last_name: "03", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue trois", postal_code: "1000", city: "Brussels", 
	country: "Belgique", email: "03@gmail.com", password:"blablabla")
o4 = Owner.create(first_name: "Alan", last_name: "04", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue quatre", postal_code: "1000", city: "Brussels", 
	country: "Belgique", email: "04@gmail.com", password:"blablabla")
o5 = Owner.create(first_name: "Alan", last_name: "05", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue cinq", postal_code: "1000", city: "Brussels", 
	country: "Belgique", email: "05@gmail.com", password:"blablabla")
o6 = Owner.create(first_name: "Alan", last_name: "06", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue six", postal_code: "1000", city: "Namur", 
	country: "Belgique", email: "06@gmail.com", password:"blablabla")
o7 = Owner.create(first_name: "Alan", last_name: "07", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue sept", postal_code: "1000", city: "Namur", 
	country: "Belgique", email: "07@gmail.com", password:"blablabla")
o8 = Owner.create(first_name: "Alan", last_name: "08", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue huit", postal_code: "1000", city: "Namur", 
	country: "Belgique", email: "08@gmail.com", password:"blablabla")
o9 = Owner.create(first_name: "Alan", last_name: "09", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue neuf", postal_code: "1000", city: "Gent", 
	country: "Belgique", email: "09@gmail.com", password:"blablabla")
o10 = Owner.create(first_name: "Alan", last_name: "O10", phone_number: "04004751213", 
	flat_number: "21", address: "12 rue dix", postal_code: "1000", city: "Gent", 
	country: "Belgique", email: "O10@gmail.com", password:"blablabla")