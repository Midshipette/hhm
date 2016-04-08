# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#   Owners
o1f1f2f7 = Owner.create(first_name: "Maxence", last_name: "O1f1f2f7", phone_number: "04004751213",
	flat_number: "21", address: "12 rue premiere", postal_code: "1000", city: "Brussels",
	country: "Belgique", email: "maxence.snoy@gmail.com", password:"blablabla")
o2f3 = Owner.create(first_name: "Hedwige", last_name: "02f3", phone_number: "04004751213",
	flat_number: "21", address: "12 rue deux", postal_code: "1000", city: "Brussels",
	country: "Belgique", email: "martimprey@gmail.com", password:"blablabla")
o3f4= Owner.create(first_name: "Vallier", last_name: "03f4", phone_number: "04004751213",
	flat_number: "21", address: "12 rue trois", postal_code: "1000", city: "Brussels",
	country: "Belgique", email: "vallieradam@gmail.com", password:"blablabla")
o4f5= Owner.create(first_name: "Axel", last_name: "04f5", phone_number: "04004751213",
	flat_number: "21", address: "12 rue quatre", postal_code: "1000", city: "Brussels",
	country: "Belgique", email: "adinbrussels@gmail.com", password:"blablabla")
o5f6 = Owner.create(first_name: "Alan", last_name: "05f6", phone_number: "04004751213",
	flat_number: "21", address: "12 rue cinq", postal_code: "1000", city: "Brussels",
	country: "Belgique", email: "05@gmail.com", password:"blablabla")
o6f8 = Owner.create(first_name: "Alan", last_name: "06f8", phone_number: "04004751213",
	flat_number: "21", address: "12 rue six", postal_code: "1000", city: "Namur",
	country: "Belgique", email: "06@gmail.com", password:"blablabla")
o7f9 = Owner.create(first_name: "Alan", last_name: "07f9", phone_number: "04004751213",
	flat_number: "21", address: "12 rue sept", postal_code: "1000", city: "Namur",
	country: "Belgique", email: "07@gmail.com", password:"blablabla")
o8f10 = Owner.create(first_name: "Alan", last_name: "08f10", phone_number: "04004751213",
	flat_number: "21", address: "12 rue huit", postal_code: "1000", city: "Namur",
	country: "Belgique", email: "08@gmail.com", password:"blablabla")
o9f11 = Owner.create(first_name: "Alan", last_name: "09f11", phone_number: "04004751213",
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
f1 = Flat.create(owner_id: 1, flat_name: "Louise", floor: "3",
 flat_number: 2, address: "avenue Louise", city: "Brussels", syndicate: "GGG",
  postal_code: "1050", description: "what to put in description", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Appart")
f2 = Flat.create(owner_id: 1, flat_name: "Louise", floor: "4",
 flat_number: 2, address: "avenue Louise", city: "Brussels", syndicate: "GGG",
  postal_code: "1050", description: "what to put in description", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Appart")
f3 = Flat.create(owner_id: 2, flat_name: "Liberty", floor: "NA",
 flat_number: 2, address: "avenue de la liberté", city: "WAterloo", syndicate: "NA",
  postal_code: "1410", description: "what to put in description", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "House")
f4 = Flat.create(owner_id: 3, flat_name: "Lippens", floor: "0",
 flat_number: 2, address: "avenue Lippens", city: "Knokke", syndicate: "Sea side syndic",
  postal_code: "3800", description: "nice view", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Appart")
f5 = Flat.create(owner_id: 4, flat_name: "Diegem", floor: "1",
 flat_number: 2, address: "Rue Flémard", city: "Brussels", syndicate: "TREC",
  postal_code: "1020", description: "To be refurnished", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Studio")
f6 = Flat.create(owner_id: 5, flat_name: "Louise", floor: "3",
 flat_number: 2, address: "avenue Louise", city: "Brussels", syndicate: "GGG",
  postal_code: "1050", description: "what to put in description", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Appart")
f7 = Flat.create(owner_id: 1, flat_name: "Louise", floor: "3",
 flat_number: 2, address: "avenue américaine", city: "Brussels", syndicate: "AB Invest",
  postal_code: "1050", description: "what to put in description", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Penthouse")
f8 = Flat.create(owner_id: 6, flat_name: "Gudule", floor: "7",
 flat_number: 2, address: "place saint Gudule", city: "Brussels", syndicate: "Immo Immo",
  postal_code: "1000", description: "what to put in description", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Appart")
f9 = Flat.create(owner_id: 7, flat_name: "Ferme", floor: "NA",
 flat_number: 2, address: "avenue du champs", city: "Habay", syndicate: "NA",
  postal_code: "6080", description: "nice air", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Ferme")
f10 = Flat.create(owner_id: 8, flat_name: "", floor: "2",
 flat_number: 2, address: "chaussée de Waterloo", city: "Brussels", syndicate: "GGG",
  postal_code: "1180", description: "On the street", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Appart")
f11 = Flat.create(owner_id: 9, flat_name: "Américaine", floor: "1",
 flat_number: 2, address: "rue F. Merjay", city: "Brussels", syndicate: "GGG",
  postal_code: "1050", description: "nice view", country: "Belgium",
  loan_cost: 758.69, tax_cost: 543.67, flat_type: "Appart")

#Contracts
c1 = Contract.create(rent_start: "01/01/2015", renter_id: 1, flat_id: 1,
 rent_amount: 1000.12, warranty_amount: 350, pay_day: 1, active: "Active",
  days_to_reminder: 10)
c2 = Contract.create(rent_start: "01/01/2010", rent_end: "20/12/2012" ,
  renter_id: 2, flat_id: 1, rent_amount: 988.12, warranty_amount: 300,
   pay_day: 1, active: "Inactive", days_to_reminder: 15)
c3 = Contract.create(rent_start: "01/01/2013", renter_id: 2, flat_id: 11,
 rent_amount: 658.12, warranty_amount: 300, pay_day: 15, active: "Active",
  days_to_reminder: 30)
c4 = Contract.create(rent_start: "15/04/2014", rent_end: "20/12/2012", renter_id: 3, flat_id: 2,
 rent_amount: 450.45, warranty_amount: 200, pay_day: 20, active: "Inactive",
  days_to_reminder: 15)
c5 = Contract.create(rent_start: "15/04/2014", renter_id: 4, flat_id: 3,
 rent_amount: 450.45, warranty_amount: 200, pay_day: 20, active: "Active",
  days_to_reminder: 15)
c6 = Contract.create(rent_start: "15/06/2016", renter_id: 5, flat_id: 4,
 rent_amount: 550, warranty_amount: 250, pay_day: 20, active: "Active",
  days_to_reminder: 15)
c7 = Contract.create(rent_start: "15/04/2004", renter_id: 6, flat_id: 5,
 rent_amount: 650.78, warranty_amount: 300, pay_day: 20, active: "Active",
  days_to_reminder: 15)
c8 = Contract.create(rent_start: "15/04/2012", rent_end: "20/12/2012", renter_id: 7, flat_id: 6,
 rent_amount: 750.98, warranty_amount: 400, pay_day: 20, active: "Inactive",
  days_to_reminder: 15)
c9 = Contract.create(rent_start: "15/04/1984", renter_id: 8, flat_id: 7,
 rent_amount: 850, warranty_amount: 400, pay_day: 20, active: "Active",
  days_to_reminder: 15)
c10 = Contract.create(rent_start: "15/04/1999", rent_end: "20/12/2012", renter_id: 9, flat_id: 8,
 rent_amount: 950.45, warranty_amount: 500, pay_day: 20, active: "Inactive",
  days_to_reminder: 15)
c11 = Contract.create(rent_start: "15/04/2016", renter_id: 10, flat_id: 9,
 rent_amount: 1278.56, warranty_amount: 600, pay_day: 20, active: "Pending",
  days_to_reminder: 15)

#Documents
doc1 = Document.create(contract_id: 1, doc_type: "Rent contract", name: "Bail")
doc2 = Document.create(contract_id: 2, doc_type: "PEB", name: "Niveau D",
  expiration_date: "15/01/2020", reminder_sent_date: "15/10/2019",
  days_to_reminder: 60)
doc3 = Document.create(contract_id: 3, doc_type: "Entretien", name: "Chaudière",
 reminder_sent_date: "15/10/2019", days_to_reminder: 20)
doc4 = Document.create(contract_id: 3, doc_type: "Rent contract", name: "Bail",
  expiration_date: "01/01/2015", reminder_sent_date: "15/10/2014",
  days_to_reminder: 60)
doc5 = Document.create(contract_id: 3, doc_type: "Insurance", name: "Home",
  expiration_date: "15/12/2016", days_to_reminder: 60)
doc6 = Document.create(contract_id: 4, doc_type: "Rent contract", name: "Bail")
doc7 = Document.create(contract_id: 5, doc_type: "PEB", name: "Niveau D",
  expiration_date: "15/01/2020", reminder_sent_date: "15/10/2019",
  days_to_reminder: 60)
doc8 = Document.create(contract_id: 6, doc_type: "Entretien", name: "Chaudière",
 reminder_sent_date: "15/10/2019", days_to_reminder: 20)
doc9 = Document.create(contract_id: 6, doc_type: "Rent contract", name: "Bail",
  expiration_date: "01/01/2015", reminder_sent_date: "15/10/2014",
  days_to_reminder: 60)
doc10 = Document.create(contract_id: 7, doc_type: "Insurance", name: "Home",
  expiration_date: "15/12/2016", days_to_reminder: 60)
doc11 = Document.create(contract_id: 8, doc_type: "Rent contract", name: "Bail")
doc12 = Document.create(contract_id: 9, doc_type: "PEB", name: "Niveau D",
  expiration_date: "15/01/2020", reminder_sent_date: "15/10/2019",
  days_to_reminder: 60)
doc13 = Document.create(contract_id: 10, doc_type: "Entretien", name: "Chaudière",
 reminder_sent_date: "15/10/2019", days_to_reminder: 20)
doc14 = Document.create(contract_id: 10, doc_type: "Rent contract", name: "Bail",
  expiration_date: "01/01/2015", reminder_sent_date: "15/10/2014",
  days_to_reminder: 60)
doc15 = Document.create(contract_id: 10, doc_type: "Insurance", name: "Home",
  expiration_date: "15/12/2016", days_to_reminder: 60)



task1 = Task.create(contract_id: 1, due_date: "01/01/2016", name: "boiler maintenance 2016", description: "Boiler maintenance
  has to be performed every every year according to new regulations", owner: "renter")
task2 = Task.create(contract_id: 1, due_date: "30/04/2016", name: "Rent price update", description: "I have to increase you rent
  because I don't like you", owner: "renter")
task3 = Task.create(contract_id: 1, due_date: "15/04/2016", name: "Make new keys", description: "because youb lost your keys", owner: "owner")
task4 = Task.create(contract_id: 1, due_date: "10/04/2016", name: "Upload new PEB doc", description: "Because you have to", owner:"renter")

task5 = Task.create(contract_id: 2, due_date: "01/01/2016", name: "boiler maintenance 2016", description: "Boiler maintenance
  has to be performed every every year according to new regulations", owner: "renter")
task6 = Task.create(contract_id: 2, due_date: "30/04/2016", name: "Rent price update", description: "I have to increase you rent
  because I don't like you", owner: "renter")
task7 = Task.create(contract_id: 2, due_date: "15/04/2016", name: "Make new keys", description: "because youb lost your keys", owner: "owner")
task8 = Task.create(contract_id: 2, due_date: "10/04/2016", name: "Upload new PEB doc", description: "Because you have to", owner:"renter")


