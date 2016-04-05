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

# Renters
r1 = Renter.create(email: "r1@gmail.com", password: "blablabla", first_name: "Val",
 last_name: "r1", phone_number: "003223004455", gender: "male", birthday: "26/03/1970")
r2 = Renter.create(email: "r2@gmail.com", password: "blablabla", first_name: "Hed",
 last_name: "r2", phone_number: "003223004455", gender: "female", birthday: "26/04/1970")
r3 = Renter.create(email: "r3@gmail.com", password: "blablabla", first_name: "Max",
 last_name: "r3", phone_number: "003223004455", gender: "male", birthday: "26/05/1970")
r4 = Renter.create(email: "r4@gmail.com", password: "blablabla", first_name: "Jean-Mich",
 last_name: "r4", phone_number: "003223004455", gender: "male", birthday: "26/06/1970")
r5 = Renter.create(email: "r5@gmail.com", password: "blablabla", first_name: "Laurent",
 last_name: "r5", phone_number: "003223004455", gender: "male", birthday: "26/07/1970")
r6 = Renter.create(email: "r6@gmail.com", password: "blablabla", first_name: "John",
 last_name: "r6", phone_number: "003223004455", gender: "male", birthday: "26/08/1970")
r7 = Renter.create(email: "r7@gmail.com", password: "blablabla", first_name: "Julien",
 last_name: "r7", phone_number: "003223004455", gender: "male", birthday: "26/09/1970")
r8 = Renter.create(email: "r8@gmail.com", password: "blablabla", first_name: "Jules",
 last_name: "r8", phone_number: "003223004455", gender: "male", birthday: "26/10/1970")
r9 = Renter.create(email: "r9@gmail.com", password: "blablabla", first_name: "Jeff",
 last_name: "r9", phone_number: "003223004455", gender: "male", birthday: "26/11/1970")
r10 = Renter.create(email: "r10@gmail.com", password: "blablabla", first_name: "Jan",
 last_name: "r10", phone_number: "003223004455", gender: "male", birthday: "26/12/1970")

#Flats
#f1 = Flat.create(owner_id: 1, flat_name: "Louise", floor: "3",
 #flat_number: 2, address: "avenue Louise", city: "Brussels", syndicate: "GGG",
 # postal_code: "1050", description: "what to put in description", country: "Belgium",
 # loan_cost: 758.69, tax_code: 543.67, type: "Appart")

