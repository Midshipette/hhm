# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160406164502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.date     "rent_start"
    t.date     "rent_end"
    t.integer  "renter_id"
    t.integer  "flat_id"
    t.float    "rent_amount"
    t.float    "warranty_amount"
    t.integer  "pay_day"
    t.string   "active"
    t.integer  "days_to_reminder"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "contracts", ["flat_id"], name: "index_contracts_on_flat_id", using: :btree
  add_index "contracts", ["renter_id"], name: "index_contracts_on_renter_id", using: :btree

  create_table "costs", force: :cascade do |t|
    t.string   "cost_type"
    t.integer  "contract_id"
    t.string   "month"
    t.string   "paid"
    t.date     "reminder_send_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "costs", ["contract_id"], name: "index_costs_on_contract_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.integer  "contract_id"
    t.string   "doc_type"
    t.date     "expiration_date"
    t.string   "name"
    t.date     "reminder_sent_date"
    t.integer  "days_to_reminder"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "attachment"
  end

  add_index "documents", ["contract_id"], name: "index_documents_on_contract_id", using: :btree

  create_table "flats", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "flat_type"
    t.string   "flat_name"
    t.string   "floor"
    t.string   "flat_number"
    t.string   "address"
    t.string   "city"
    t.string   "syndicate"
    t.string   "postal_code"
    t.text     "description"
    t.string   "country"
    t.float    "loan_cost"
    t.float    "tax_cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "flats", ["owner_id"], name: "index_flats_on_owner_id", using: :btree

  create_table "owners", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "city"
    t.string   "flat_number"
    t.string   "address"
    t.string   "postal_code"
    t.string   "country"
  end

  add_index "owners", ["email"], name: "index_owners_on_email", unique: true, using: :btree
  add_index "owners", ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true, using: :btree

  create_table "renters", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "private"
    t.string   "gender"
    t.date     "birthday"
  end

  add_index "renters", ["email"], name: "index_renters_on_email", unique: true, using: :btree
  add_index "renters", ["reset_password_token"], name: "index_renters_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "contracts", "flats"
  add_foreign_key "contracts", "renters"
  add_foreign_key "costs", "contracts"
  add_foreign_key "documents", "contracts"
  add_foreign_key "flats", "owners"
end
