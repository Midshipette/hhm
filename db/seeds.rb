# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Cleaning database..."

Owner.destroy_all
Renter.destroy_all

Flat.destroy_all
Contract.destroy_all

Task.destroy_all
Document.destroy_all
Cost.destroy_all

##################################################

puts "Creating owner..."

owner = Owner.create!(
  email: "pp@gmail.com", 
  password: "blablabla",
  password_confirmation: "blablabla",
  first_name: "Pierre",
  last_name: "Peeters",
  phone_number: "0475415345",
  city: "Brussels",
  address: "5 place Sainte-Gudule",
  postal_code: "1000",
  country: "BE"
)

##################################################

puts "Creating renters..."

renter_montgomery = Renter.create!(
  email: "kruse@gmail.com",
  password: "blablabla",
  password_confirmation: "blablabla",
  first_name: "Marty",
  last_name: "Kruse",
  phone_number: "0032498664412",
  private: "Private",
  gender: "Male",
  birthday: "1968-08-15"
)

renter_louise = Renter.create!(
  email: "ajames@gmail.com",
  password: "blablabla",
  password_confirmation: "blablabla",
  first_name: "Anita",
  last_name: "James",
  phone_number: "0497897623",
  private: "Private",
  gender: "Female",
  birthday: "1975-01-15"
)

##################################################

puts "Creating flats..."

flat_namur = owner.flats.create!(
  flat_type: "Flat", 
  flat_name: "Namur", 
  floor: "4", 
  flat_number: "6", 
  address: "5, Porte de Namur", 
  city: "Brussels", 
  syndicate: "", 
  postal_code: "1050", 
  description: "", 
  country: "BE", 
  loan_cost: nil, 
  tax_cost: nil, 
  created_at: "2016-04-15 09:53:59"
)

flat_montgomery = owner.flats.create!(
  flat_type: "House", 
  flat_name: "Montgomery", 
  floor: "", 
  flat_number: "", 
  address: "12 rue des bataves", 
  city: "Brussels", 
  syndicate: "", 
  postal_code: "1040", 
  description: "", 
  country: "BE", 
  loan_cost: nil, 
  tax_cost: nil, 
  created_at: "2016-04-15 09:48:00"
)

flat_louise = owner.flats.create!(
  flat_type: "Flat", 
  flat_name: "Louise", 
  floor: "3", 
  flat_number: "2", 
  address: "215 avenue Louise", 
  city: "Brussels", 
  syndicate: "TRREC", 
  postal_code: "1000", 
  description: "", 
  country: "BE", 
  loan_cost: nil, 
  tax_cost: nil, 
  created_at: "2016-04-15 09:18:33"
)

##################################################

puts "Creating contracts..."

contract_montgomery = flat_montgomery.contracts.create!(
  rent_start: "2016-01-01",
  rent_end: "2018-12-31",
  renter: renter_montgomery,
  rent_amount: 1800.0,
  warranty_amount: 2000.0,
  pay_day: 1,
  active: "Active",
  days_to_reminder: 7,
  created_at: "2016-04-15 09:48:41",
  provision: 250.0
)

contract_louise = flat_louise.contracts.create!(
  rent_start: "2016-01-01",
  rent_end: "2018-12-31",
  renter: renter_louise,
  rent_amount: 1000.0,
  warranty_amount: 900.0,
  pay_day: 1,
  active: "Active",
  days_to_reminder: 7,
  created_at: "2016-04-15 09:21:34",
  provision: 200.0
)

##################################################

puts "Creating costs..."

cost_louise = Cost.create!(
  contract: contract_louise,
  reminder_send_date: nil,
  created_at: "2016-04-15 09:25:43",
  start_month_year: "2016-01-01",
  end_month_year: "2016-03-01",
  owner_charge: 15.0,
  renter_charge_private: 10.0,
  electricity: 30.0,
  property_mngt_cost: 50.0,
  cleaning_maintenance: 30.0,
  elevator: 30.0,
  water: 20.0,
  heating: 60.0,
  paid: true,
  cleared: false
)

##################################################

puts "Creating revenues..."

# Montgomery

contract_montgomery.revenues.create!(rent_month: "2016-04-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-05-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-06-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-07-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-08-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-09-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-10-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-11-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-12-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-01-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-02-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-03-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-04-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-05-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-06-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-07-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-08-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-09-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-10-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-11-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2017-12-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-01-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-02-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-03-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-04-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-05-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-06-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-07-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-08-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-09-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-10-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2018-11-01", paid: false, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:48:41")
contract_montgomery.revenues.create!(rent_month: "2016-01-12", paid: true, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:51:47")
contract_montgomery.revenues.create!(rent_month: "2016-02-01", paid: true, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:51:52")
contract_montgomery.revenues.create!(rent_month: "2016-03-01", paid: true, created_at: "2016-04-15 09:48:41", updated_at: "2016-04-15 09:51:55")

# Louise

contract_louise.revenues.create!(rent_month: "2016-04-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-05-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-06-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-07-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-08-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-09-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-10-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-11-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-12-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-01-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-02-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-03-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-04-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-05-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-06-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-07-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-08-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-09-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-10-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-11-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2017-12-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-01-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-02-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-03-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-04-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-05-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-06-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-07-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-08-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-09-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-10-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2018-11-01", paid: false, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:21:34")
contract_louise.revenues.create!(rent_month: "2016-12-01", paid: true, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:24:32")
contract_louise.revenues.create!(rent_month: "2016-01-01", paid: true, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:24:34")
contract_louise.revenues.create!(rent_month: "2016-02-01", paid: true, created_at: "2016-04-15 09:21:34", updated_at: "2016-04-15 09:24:37")

##################################################

puts "Creating documents..."

# Montgomery

doc_montgomery_maintenance = contract_montgomery.documents.new(
  contract_id: 13, 
  doc_type: "Maintenance", 
  expiration_date: "2016-02-15", 
  name: "Gas boiler", 
  reminder_sent_date: nil, 
  days_to_reminder: 0, 
  created_at: "2016-04-15 09:52:35", 
  updated_at: "2016-04-15 09:52:35", 
)
doc_montgomery_maintenance[:attachment] = "image/upload/v1460719720/hdebos2gsudqih84jslb.pdf"
doc_montgomery_maintenance.save!

# Louise

doc_louise_peb = contract_louise.documents.new(
  doc_type: "PEB", 
  expiration_date: "2016-04-15", 
  name: "PEB Louise", 
  reminder_sent_date: nil, 
  days_to_reminder: 0, 
  created_at: "2016-04-15 09:34:45", 
  updated_at: "2016-04-15 09:34:45"
)
doc_louise_peb[:attachment] = "image/upload/v1460719809/fiwb0fxyyyb2ymq2szq5.jpg"
doc_louise_peb.save!

doc_louise_gas = contract_louise.documents.new(
  doc_type: "Gas meter", 
  expiration_date: "2016-08-30", 
  name: "Gas heating maintenance", 
  reminder_sent_date: nil, 
  days_to_reminder: 0, 
  created_at: "2016-04-15 09:36:00", 
  updated_at: "2016-04-15 09:44:27"
)
doc_louise_gas[:attachment] = nil
doc_louise_gas.save!

doc_louise_elec = contract_louise.documents.new(
  doc_type: "Electricity", 
  expiration_date: "2016-04-15", 
  name: "Electricity meters", 
  reminder_sent_date: nil, 
  days_to_reminder: 0, 
  created_at: "2016-04-15 09:37:26", 
  updated_at: "2016-04-15 09:37:26"
)
doc_louise_elec[:attachment] = nil
doc_louise_elec.save!

doc_louise_bank = contract_louise.documents.new(
  doc_type: "Warranty", 
  expiration_date: "2016-01-15", 
  name: "Bank warranty acknowledgment", 
  reminder_sent_date: nil, 
  days_to_reminder: 0, 
  created_at: "2016-04-15 09:38:47", 
  updated_at: "2016-04-15 09:42:02", 
)
doc_louise_bank[:attachment] = "image/upload/v1460719720/hdebos2gsudqih84jslb.pdf"
doc_louise_bank.save!

doc_louise_peb_bis = contract_louise.documents.new(
  doc_type: "PEB", 
  expiration_date: "2016-04-15", 
  name: "", 
  reminder_sent_date: nil, 
  days_to_reminder: 0, 
  created_at: "2016-04-15 09:43:15", 
  updated_at: "2016-04-15 09:43:15", 
)
doc_louise_peb_bis[:attachment] = "image/upload/v1460719809/fiwb0fxyyyb2ymq2szq5.jpg"
doc_louise_peb_bis.save!


##################################################

puts "Creating tasks..."

# Montgomery

contract_montgomery.tasks.create!(
  status: "open", 
  name: "update \"Maintenance\" document", 
  description: "Update 
  document: Gas boiler", 
  due_date: "2016-02-15", 
  owner: "renter", 
  created_at: "2016-04-15 09:52:36", 
  updated_at: "2016-04-15 09:52:36", 
  document: doc_montgomery_maintenance
)

# Louise

contract_montgomery.tasks.create!(
  status: "open", 
  name: "update \"Maintenance\" document", 
  description: "Update document: Gas heating maintenance", 
  due_date: "2016-08-30", 
  owner: "renter", 
  created_at: "2016-04-15 09:36:01", 
  updated_at: "2016-04-15 09:36:01", 
  document: doc_louise_gas
)
contract_montgomery.tasks.create!(
  status: "doc uploaded", 
  name: "update \"Warranty\" document", 
  description: "Update document: Bank warranty acknowledgment (Uploaded on 2016-04-15)", 
  due_date: "2016-04-15", 
  owner: "owner", 
  created_at: "2016-04-15 09:38:47", 
  updated_at: "2016-04-15 09:43:17", 
  document: doc_louise_bank
)
